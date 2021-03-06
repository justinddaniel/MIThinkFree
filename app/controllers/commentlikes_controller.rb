require 'pry'
class CommentlikesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    Commentlike.create(user_id: params[:users_id], comment_id: params[:comments_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    commentlike = Commentlike.find(params[:id])
    commentlike.destroy
    redirect_back(fallback_location: root_path)
  end

end
