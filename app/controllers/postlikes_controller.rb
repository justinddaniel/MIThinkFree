require 'pry'
class PostlikesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    Postlike.create(user_id: params[:users_id], post_id: params[:posts_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    postlike = Postlike.find(params[:id])
    postlike.destroy
    redirect_back(fallback_location: root_path)
  end

end
