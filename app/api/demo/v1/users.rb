module Demo
  module V1
    class Users < Grape::API
      include Demo::V1::Defaults

      # TODO add devise_token_auth for grape
      resource :users do
        desc 'Return all users'
        get '/', jbuilder: 'users/index' do
          @users = User.all
        end
      end

    end
  end
end
