Rails.application.routes.draw do
  root to: 'static_pages#home' 
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/welcome/:id', to: 'dynamic_pages#name'
  get '/gossip/:id', to: 'dynamic_pages#gossip'
  get 'user/:id', to: 'dynamic_pages#user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
