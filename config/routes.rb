Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :metrics do
  	resources :metric_values
  end
  resources :organizations
  resources :csf_functions
  resources :dashboards
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'dashboards#index'
  mount Judge::Engine => '/judge'
end
