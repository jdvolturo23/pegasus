Rails.application.routes.draw do
  
  root to: 'videos#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  
  delete '/logout', to: 'sessions#destroy', as: :logout
  
  resources :videos, only: [:index, :new, :create]
  resources :video_uploads, only: [:new, :create]

end
