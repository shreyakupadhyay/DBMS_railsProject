class WelcomeController < ApplicationController
  def new 
  	 @signup = Signup.new
  	 #render "new"
  end

  def signup
  	@signup = Signup.new(signup_params)
  	@signup.save
  end

  private

  def signup_params
    params.require(:signup).permit(:email, :password)
  end
end
