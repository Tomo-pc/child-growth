class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @child_name = user.child_name
    @sex_id = user.sex_id
    @milks = user.milks
  end
end
