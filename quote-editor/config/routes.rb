Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#home"

  # Defines the root path route ("/")
  resources :quotes
end
