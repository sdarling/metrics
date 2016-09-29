Rails.application.routes.draw do
  resources :metrics do
  	resources :metric_values 
  end
  resources :organizations
  resources :csf_functions
  devise_for :users
  root to: 'visitors#index'
end
