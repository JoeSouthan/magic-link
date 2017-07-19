Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :login, only: [:create, :index]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
