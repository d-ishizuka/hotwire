Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#home"

  # Defines the root path route ("/")
  resources :quotes do
    resources :line_item_dates, except: [:index, :show]
  end

  resources :quotes do
    resources :line_item_dates, except: [:index, :show] do
      resources :line_items, except: [:index, :show]
    end
  end
end
