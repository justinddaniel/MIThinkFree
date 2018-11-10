require 'pry'
class PostsController < ApplicationController

  def index
    #binding.pry
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #binding.pry
    @post = Post.new(title: params[:post][:title], body: params[:post][:body])
    @post.user_id = current_user.id
    if @post.save
      redirect_to '/posts'
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

end
