Rails.application.routes.draw do

  root 'application#index'
  get "*path.html" => "application#index", :layout => 0
  # get "*path" => "application#index"

  # see https://github.com/lynndylanhurley/devise_token_auth/issues/101
  namespace :api, defaults: { format: :json } do
    scope :v1 do
      resources :users, only: :index
    end
  end
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'

end
