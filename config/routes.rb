Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'employee/asset' => 'asset#index'
  resources :company
  resources :employee
  resources :asset
  resources :company do
  	resources :employee do
		  resources :asset
	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
