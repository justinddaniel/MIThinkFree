class UsersController < ApplicationController
  before_action :set_user

  def show
    @user.profile ? @profile = @user.profile : @profile = Profile.new
    @blogposts = @user.blogposts
    @blopost = Blogpost.new
  end

  private

    def set_user
      @user = User.find(params[:id]) || @user = current_user
    end
end
