Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies
  resources :employees
  resources :assets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
