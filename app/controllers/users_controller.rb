class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user.profile ? @profile = @user.profile : @profile = Profile.new
    @blogposts = @user.blogposts
    @blogpost = Blogpost.new
  end

end
