Rails.application.routes.draw do
  get 'signet-out',  to: 'signouts#index'
  devise_for :users, except: :create, path: '', path_names: { sign_in: 'login', sign_out: 'signed-out' }
  resources :volunteer_help_requests
  root to: 'volunteer_help_requests#index'
end
