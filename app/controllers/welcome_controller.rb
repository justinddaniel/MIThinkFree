require 'pry'

class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    #binding.pry
    @user = current_user if current_user
  end

end
