Rails.application.routes.draw do
  get 'magic', to: 'magic#show'

  root to: 'homepage#index'
  resources :login, only: [:create, :index]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
