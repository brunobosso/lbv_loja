LbvTraining::Application.routes.draw do

  root to: 'test#index'
  
  namespace :admin
  	resource :category
  end
end
