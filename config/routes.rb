Rails.application.routes.draw do
  resources :jobs, only: [:index, :show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'jobs#index'
end
