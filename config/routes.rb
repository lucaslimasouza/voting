Rails.application.routes.draw do
  root to: 'meetings#index'
  namespace :admin do
    resources :meetings, only: [:index, :new, :create]
    resources :job_roles, only: [:new, :create, :show]
  end

  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
