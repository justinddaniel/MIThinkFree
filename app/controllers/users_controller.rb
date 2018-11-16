class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user.profile ? @profile = @user.profile : @profile = Profile.new
  end

end
