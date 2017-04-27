Rails.application.routes.draw do
  root :to => 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  resource 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
