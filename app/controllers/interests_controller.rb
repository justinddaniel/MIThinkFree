require 'pry'
class InterestsController < ApplicationController

  def index
    @interests = Interest.all
    @interest = Interest.new
    interests = params[:current_user][:interest_ids] if params[:current_user] && params[:current_user][:interest_ids]
    if interests
      interests.each do |interest_id|
        if interest_id.to_i && !interest_id.empty?
          interest = Interest.find(interest_id.to_i)
          current_user.interests << interest if interest && !current_user.interests.include?(interest)
        end
      end
    end
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
