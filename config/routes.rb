Rails.application.routes.draw do
  root to: 'meetings#index'
  resources :votes, only: [:create, :new]
  namespace :admin do
    resources :meetings, only: [:index, :new, :create]
    resources :job_roles, only: [:new, :create, :show]
  end

  devise_for :users
  devise_for :admins
end
