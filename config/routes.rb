Rails.application.routes.draw do
  get 'sessions/new'

  root :to => 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  # get '/successful-sign-up', :to => redirect('/')
  resource 'users'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
