class Api::V1::UsersController < ApplicationController
  # TODO: Completed 401 Unauthorized
  # before_filter :authenticate_api_user!
  before_action :authenticate_user!

  def index
    @users = User.all
  end

end
