class UsersController < ApplicationController
  # TODO: Completed 401 Unauthorized
  before_filter :authenticate_api_user!

  def index
    @users = User.all
  end

end
