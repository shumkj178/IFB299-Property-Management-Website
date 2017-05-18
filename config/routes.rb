Rails.application.routes.draw do
  get 'sessions/new'

  root :to => 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/user/:id' => 'users#show', :as => :user
  get '/user/:id/edit' => 'users#edit', :as => :edit_user
  patch 'user/:id' => 'users#update'
  resource 'users'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/properties' => 'properties#index'
  get '/property/new' => 'properties#new'
  get '/property/:id' => 'properties#show', :as => :property
  get '/property/:id/edit' => 'properties#edit', :as => :edit_property
  patch 'property/:id' => 'properties#update'
  resource 'properties'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
