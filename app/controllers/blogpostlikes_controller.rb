require 'pry'
class BlogpostlikesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    Blogpostlike.create(user_id: params[:users_id], blogpost_id: params[:blogposts_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    blogpostlike = Blogpostlike.find(params[:id])
    blogpostlike.destroy
    redirect_back(fallback_location: root_path)
  end

end
