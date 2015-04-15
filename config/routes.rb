LbvTraining::Application.routes.draw do

  root to: 'test#index'

  namespace :admin do
  	resources :categories
  end
end
