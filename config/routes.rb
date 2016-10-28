Rails.application.routes.draw do
  resources :software_centers
  post 'software_center_import' => "software_centers#import"
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
