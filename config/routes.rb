Rails.application.routes.draw do
  resources :trons
  resources :users, only: [:create]
  resources :sessions, only: [:create, :destroy]
end
