Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: %i[new create]
    collection do
      get :top
      # get "top", to: "restaurants#top", as: :top_restaurants shortcut
    end
    member do
      get :chef
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # Defines the root path route ("/")
  # root "articles#index"
end
