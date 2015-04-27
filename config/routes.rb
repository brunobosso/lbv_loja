LbvTraining::Application.routes.draw do

  root to: 'admin/operators#index'

  namespace :admin do
  	resources :categories
  	resources :sectors
  	resources :operators
  	resources :products
  	resources :logins
  end
end
