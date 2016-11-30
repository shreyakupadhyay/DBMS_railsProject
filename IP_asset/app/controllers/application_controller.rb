class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def login_required
    redirect_to('/login') if current_user.blank?
  end
end
