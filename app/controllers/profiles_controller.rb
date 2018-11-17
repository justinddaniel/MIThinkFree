require 'pry'
class ProfilesController < ApplicationController

  def new
    @user = current_user
    @profile = Profile.new
  end

  def create
    profile = Profile.new
    p = params[:profile]
    profile.real_name = p[:real_name] if p[:real_name]
    profile.alias = p[:alias] if p[:alias]
    profile.birthday = p[:birthday] if p[:birthday]
    profile.location = p[:location] if p[:location]
    profile.bio = p[:bio] if p[:bio]
    profile.user_id = params[:user_id]
    if profile.save
      redirect_to "/users/#{current_user.id}"
    else
      @profile = Profile.new
      @user = current_user
      render :new
    end
  end

  def edit
    @user = current_user
    @profile = @user.profile
  end

  def update
    profile = Profile.find(params[:id])
    p = params[:profile]
    profile.real_name = p[:real_name]
    profile.alias = p[:alias]
    profile.birthday = p[:birthday]
    profile.location = p[:location]
    profile.bio = p[:bio]
    if profile.save
      redirect_to "/users/#{current_user.id}"
    else
      render :edit
    end
  end

end
