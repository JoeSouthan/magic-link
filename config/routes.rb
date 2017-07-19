Rails.application.routes.draw do
  root to: 'homepage#index'
  get 'magic', to: 'magic#show'
  resources :login, only: [:create, :index] do
    collection do
      delete :destroy
    end
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
