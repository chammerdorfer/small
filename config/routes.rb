Rails.application.routes.draw do
  devise_for :user, only: []
  resources :story

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
  end
end