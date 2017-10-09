Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/articles', to:'articles#index'
  get '/', to: 'home#index', as: :home
  # resources :articles, only: [:index, :show]
  resources :album, only: [:index, :show]
  # resources :about, only: [:index]
  # resources :blog,  only: [:index, :show]
  get '/blog', to: 'blog#index'
  get '/blog/show/:id', to: 'blog#show',as: :show_blog
  get '/blogs/new', to: 'blog#new',  as: :newblog
  post 'blog/show/:id', to: 'blog#addcomment', as: :addcomment
  get 'blog/myblog/:id', to: 'blog#myblogs', as: :myblogs
  post '/blogs/new', to: 'blog#create', as: nil
  get 'blog/edit/:id', to: 'blog#show_edit', as: :editblog
  post 'blog/edit/:id', to: 'blog#edit', as: nil
  get '/about', to: 'about#index'
  get '/sessions/login', to: 'sessions#index', as: :login
  post '/sessions/login', to: 'sessions#create', as: nil
  delete '/sessions/logout', to: 'sessions#destroy', as: :logout
  get 'users/register', to: 'users#index', as: :register
  post 'users/register', to: 'users#create', as: nil
end
