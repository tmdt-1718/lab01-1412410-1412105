Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/articles', to:'articles#index'
  get '/', to: 'home#index'
  resources :articles, only: [:index, :show]
  resources :album, only: [:index, :show]
  resources :about, only: [:index]
  resources :blog,  only: [:index, :show]
end
