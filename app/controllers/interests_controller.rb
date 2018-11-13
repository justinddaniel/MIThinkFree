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
    binding.pry
    @interest = Interest.new(title: params[:interest][:title], description: params[:interest][:description])
    @interest.save
    redirect_to interests_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
