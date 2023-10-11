Rails.application.routes.draw do
  get 'friends/index'
  get 'friends/new'
  devise_for :users
  resources :friends
  resources :homes
  root "homes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
