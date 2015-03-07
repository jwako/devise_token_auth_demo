class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @users = User.all
  end

end
