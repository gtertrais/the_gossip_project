Rails.application.routes.draw do
  root to: 'static_pages#index' 
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/welcome/:id', to: 'dynamic_pages#landing_page'
  get '/gossip/:id', to: 'dynamic_pages#show_gossip'
  get 'user/:id', to: 'dynamic_pages#show_profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
