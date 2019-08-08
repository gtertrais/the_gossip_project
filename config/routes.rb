Rails.application.routes.draw do
  get 'sessions/new'
  resources :gossips do
    resources :comments
    resources :likes
  end
  resources :contact
  resources :team
  resources :users
  resources :cities
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'gossips#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
