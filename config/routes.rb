LbvTraining::Application.routes.draw do

  root to: 'products#index'

  namespace :admin do
  	resources :categories
  	resources :sectors
  	resources :operators
  	resources :products
  	resource :login
  end

  resources :products, only: [:index, :show]
end
