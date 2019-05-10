Rails.application.routes.draw do

  resources :reviews, only: [:index, :show]

  resources :reviews do
    member do
      get :view_show
      get :search_results
    end
  end

  root 'reviews#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
