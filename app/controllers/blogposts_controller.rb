require 'pry'
class BlogpostsController < ApplicationController

  def new
    @blogpost = Blogpost.new
    @user = params[:id]
  end

  def create
    @blogpost = Blogpost.new
    @blogpost.user_id = params[:user_id]
    @blogpost.title = params[:blogpost][:title]
    @blogpost.body = params[:blogpost][:body]
    @blogpost.save
    redirect_to "/users/#{params[:user_id]}"
  end

  def edit
    @user = User.find(params[:user_id])
    @blogpost = Blogpost.find(params[:id])
  end

  def update
    blogpost = Blogpost.find(params[:id])
    blogpost.title = params[:blogpost][:title] if params[:blogpost][:title]
    blogpost.body = params[:blogpost][:body] if params[:blogpost][:body]
    blogpost.save
    redirect_to "/users/#{params[:user_id]}"
  end

  def destroy
    blogpost = Blogpost.find(params[:id])
    blogpost.destroy
    redirect_to "/users/#{params[:user_id]}"
  end

end
