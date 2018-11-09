class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @user = User.find_by(id: session[:user_id])
  end

end
