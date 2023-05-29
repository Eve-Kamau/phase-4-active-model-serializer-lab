Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :posts, only: [:index, :show]
  resources :authors, only: [:index, :show]
  get '/authors/:id/short_content', to: 'authors#short_content'
 
  
end
