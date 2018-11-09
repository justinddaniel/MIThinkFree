require 'pry'
class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    #binding.pry
    post_id = params[:post_id]
    @comment = Comment.new(body: params[:comment][:body], post_id: post_id, user_id: current_user.id)
    if @comment.save
      redirect_to "/posts"
    else
      redirect_to "/posts/#{post_id}/comments/new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
