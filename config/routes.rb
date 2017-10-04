Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/articles', to:'articles#index'
  get '/', to: 'home#index'
  resources :articles, only: [:index, :show]
  resources :album, only: [:index, :show]
  # resources :about, only: [:index]
  resources :blog,  only: [:index, :show]
  get '/about', to: 'about#index'
  get '/sessions/login', to: 'sessions#index', as: :login
  post '/sessions/login', to: 'sessions#create', as: nil
  delete '/sessions/logout', to: 'sessions#destroy', as: :logout
  get 'users/register', to: 'users#index', as: :register
  post 'users/register', to: 'users#create', as: nil
end
