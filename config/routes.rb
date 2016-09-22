Rails.application.routes.draw do
  resources :metrics do
  	resources :metric_values 
  end
  resources :organizations
  devise_for :users
  root to: 'visitors#index'
end
