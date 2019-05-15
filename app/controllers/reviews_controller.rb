class ReviewsController < ApplicationController


  before_action :set_tv_show, only: %i[show edit update destroy]
  def index
    response = HTTParty.get("https://api.themoviedb.org/3/tv/popular?api_key=#{api_key}&language=en-US&page=1")
    puts "THE MOVIE DB RESPONSE ", response
    @reviews = response['results'] || []
  end

  def new
    @review = Review.new
  end
  def create
      @review = Review.new(review_params)

      respond_to do |format|
        if @review.save
          format.html { redirect_to @review, notice: 'Tv show was successfully created.' }
          format.json { render :show, status: :created, location: @review }
        else
          format.html { render :new }
          format.json { render json: @review.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @review.update(review_params)
          format.html { redirect_to @review, notice: 'Tv show was successfully updated.' }
          format.json { render :show, status: :ok, location: @review }
        else
          format.html { render :edit }
          format.json { render json: @review.errors, status: :unprocessable_entity }
        end
      end
    end


    def destroy
      @review.destroy
      respond_to do |format|
        format.html { redirect_to reviews_url, notice: 'Tv show was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  def view_show
    show_id = request.original_url.split('/')[4]
    @review = HTTParty.get("https://api.themoviedb.org/3/tv/#{show_id}?api_key=#{api_key}&language=en-US")
    render template: 'reviews/_shows'
  end
  def search_results
    search_query = request.original_url.split('/').last.match(/query=([^&]*)/)[1]
    search_endpoint = "https://api.themoviedb.org/3/search/tv?api_key=#{api_key}&language=en-US&query=#{search_query}&page=1"
    @search_results = HTTParty.get(search_endpoint)
    render template: 'reviews/_search_results'
  end

  private

  def set_show
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:name)
  end


  def api_key
    ENV['MOVIE_DB_API_KEY']
  end
end
