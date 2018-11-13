require 'pry'
class InterestsController < ApplicationController

  def index
    @interests = Interest.all
    @interest = Interest.new
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(title: params[:interest][:title], description: params[:interest][:description])
    if @interest.save
      redirect_to interests_path
    else
      @interests = Interest.all
      render 'interests/index'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
