class UsersController < ApplicationController
  # TODO: it gets undefined_method error!
  # before_filter :authenticate_user!

  def index
    @users = User.all
  end

end
