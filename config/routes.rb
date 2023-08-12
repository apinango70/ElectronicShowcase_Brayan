Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: [:new, :create]
  get '/home',    to: 'pages#home'
  get '/privacy', to: 'pages#privacy'
  get '/legal',   to: 'pages#terms'
  root 'pages#home'
end
