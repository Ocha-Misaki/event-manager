Rails.application.routes.draw do
  root 'site#index'

  namespace :api do
    resources :events, only: [:index, :show, :create, :update, :destroy]
  end
end
