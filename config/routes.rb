Rails.application.routes.draw do
  resources :sep_metrics
  resources :sccm_metrics
  resources :csf_categories
  resources :sources
  resources :reports
  resources :system_center_imports
  post 'import_system_center' => "system_center_imports#import"
  post 'import_system_center_2' => "system_center_imports#import_2"
  get 'metrics_xlsx' => "metrics#download_xlsx"
  ActiveAdmin.routes(self)
  resources :metrics do
  	resources :metric_values
  end
  resources :organizations
  resources :csf_functions
  resources :dashboards
  devise_for :users, :controllers => { registrations: 'registrations' }
  authenticated do 
    root to: 'dashboards#index', as: :authenticated
  end
  root to: 'visitors#index'
  mount Judge::Engine => '/judge'
end
