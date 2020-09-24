class ApplicationController < ActionController::Base
  def user_params
    params.require(:user).permit(:name)
  end

  def current_user
    return unless session[:user_id]

    @current_user ||= User.find(session[:user_id])
  end

  def event_params
    params.require(:event).permit(:event_date, :description)
  end
end
