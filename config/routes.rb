Rails.application.routes.draw do
  get 'signet-out',  to: 'signouts#index'
  devise_for :users, except: :create, path: '', path_names: { sign_in: 'login', sign_out: 'signed-out' }
  resources :volunteer_help_requests do
    post 'take', to: 'volunteer_help_requests#take_in_progress'
    post 'finish', to: 'volunteer_help_requests#finish'
  end
  get 'help_requests_in_progress',  to: 'volunteer_help_requests#in_progress'
  root to: 'volunteer_help_requests#index'
end
