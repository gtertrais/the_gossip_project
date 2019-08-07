Rails.application.routes.draw do
  resources :gossips
  resources :contact
  resources :team
  resources :profiles
  root to: 'gossips#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
