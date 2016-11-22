Rails.application.routes.draw do
  resources :metric_steps
  resources :sep_metrics
  resources :sccm_metrics
  resources :csf_categories
  devise_for :users, :controllers => { registrations: 'registrations' }  
  get '/users/sign_out' => 'devise/sessions#destroy'
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show', :as => :user
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
  authenticated do 
    root to: 'dashboards#index', as: :authenticated
  end
  root to: 'visitors#index'
  mount Judge::Engine => '/judge'
end
