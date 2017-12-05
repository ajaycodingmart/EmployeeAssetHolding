Rails.application.routes.draw do
  root 'home#index'
  get '/companies/assign_assets' => 'companies#assign_assets'
  post '/companies/submit_assets' => 'companies#submit_assets'
  get '/companies/withdraw_assets' => 'companies#withdraw_assets'
  post '/companies/withdraw_assets' => 'companies#create'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies
  resources :users
  resources :assets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
