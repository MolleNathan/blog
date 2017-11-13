Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'articles#index'

  resources :articles

  namespace :account do
    resources :users, only: [:index, :create,:update]

  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
