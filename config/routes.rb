Rails.application.routes.draw do
  root 'site#index'
  resources :site, only: :index
end
