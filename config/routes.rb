Rails.application.routes.draw do
  devise_for :users
  resources :projectts
  # get "bug", to: "bugs#new"

  # resources :bugs do
  #   get :feature, on: :member
  #   get :bug, on: :member
  # end
  get "bugs/:id/bug", to: "bugs#bug", as: :bug_bug
  get "bugs/:id/feature", to: "bugs#feature", as: :feature_bug
  get "bugs/:id/new", to: "bugs#new", as: :bug_new
  post "bugs", to: "bugs#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
