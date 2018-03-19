Rails.application.routes.draw do
  devise_for :admin_users, skip: [:registrations]
  namespace :admin do
    resources :users
    resources :categories

    root to: "users#index"
  end

  devise_for :users
  root to: 'home#index'
end
