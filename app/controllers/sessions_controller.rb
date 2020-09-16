class SessionsController < ApplicationController
  def create
    user = User.find_by_name(params[:id])
    session[:user] = user.id
  end
end
