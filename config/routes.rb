Rails.application.routes.draw do
  root to: 'home#index'
  resources :home, only: [:index] do
    collection { get :bounce }
  end
end
