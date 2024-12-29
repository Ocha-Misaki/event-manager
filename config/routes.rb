Rails.application.routes.draw do
  root 'site#index'

  get 'events', to: 'site#index'
  get 'events/new', to: 'site#index'
  get 'events/:id', to: 'site#index'
  get 'events/:id/edit', to: 'site#index'

  namespace :api do
    resources :events, only: [:index, :show, :create, :update, :destroy]
  end
end
