Rails.application.routes.draw do
  devise_for :users
  root to: "dogs#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dogs do
    resources :bookings, only: %i[new create]
  end
<<<<<<< HEAD
  resources :bookings, only: [:destroy]
=======
  resources :bookings, only: %i[destroy] # does no need to be within dog scope to delete a bookmark
  
>>>>>>> 9ca2d300d7f23f37328c3d263da3e31d8b96bb8d
  get "my_bookings", to: "bookings#my_bookings", as: :my_bookings
end
