Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :login, only: [:create, :index]
end
