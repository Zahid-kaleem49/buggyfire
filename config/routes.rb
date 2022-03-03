Rails.application.routes.draw do
  devise_for :users
  resources :projectts
  get "bug", to: "bugs#new"
  post "bug", to: "bugs#create"
  resources :projectts do
    get :bug, on: :member
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
