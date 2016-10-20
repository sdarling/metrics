Rails.application.routes.draw do
  resources :metrics do
  	resources :metric_values 
  end
  resources :organizations
  resources :csf_functions
  resources :dashboards
  devise_for :users
  root to: 'dashboards#index'
end
