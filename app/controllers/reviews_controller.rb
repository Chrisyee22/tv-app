class ReviewsController < ApplicationController

  def index
    response = HTTParty.get("https://api.themoviedb.org/3/tv/popular?api_key=#{api_key}&language=en-US&page=1")
    @reviews = response['results']
  end

  def new
    @review = Review.new
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
