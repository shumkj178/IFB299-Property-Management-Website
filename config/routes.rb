Rails.application.routes.draw do
  get 'sessions/new'

  root :to => 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/user/:id', to: 'users#show', :as => :user
  # get '/successful-sign-up', :to => redirect('/')
  resource 'users'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/properties', to: 'properties#index'
  get '/property/:id', to: 'properties#show', :as => :property
  get '/property/new' => 'properties#new'
  resource 'properties'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
