LbvTraining::Application.routes.draw do

  root to: 'test#index'

  namespace :admin do
  	resources :categories
  	resources :sectors
  	resources :operators
  	resources :products
  end
end
