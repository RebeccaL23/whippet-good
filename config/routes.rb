Rails.application.routes.draw do
  devise_for :users
  root to: "dogs#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dogs do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  get "my_bookings", to: "bookings#my_bookings", as: :my_bookings
end
