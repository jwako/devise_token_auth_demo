Rails.application.routes.draw do

  root 'application#index'
  get "*path.html" => "application#index", :layout => 0
  # get "*path" => "application#index"

  # devise_for :users
  # mount_devise_token_auth_for 'User', at: 'auth'

  # token auth routes available at /api/v1/auth
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :users, only: :index
    end
  end
  # mount Demo::Base => '/api'

end
