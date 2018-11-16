require 'pry'
class BlogpostsController < ApplicationController

  def new
    @blogpost = Blogpost.new
    @user = params[:id]
  end

  def create
    blogpost = Blogpost.new
    blogpost.user_id = params[:user_id]
    blogpost.title = params[:blogpost][:title]
    blogpost.body = params[:blogpost][:body]
    blogpost.save
    redirect_to "/users/#{params[:user_id]}"
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
