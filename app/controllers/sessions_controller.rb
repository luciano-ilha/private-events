class SessionsController < ApplicationController
  def new
    @session = @user
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      session[:user_id] = @user.id
      flash[:success] = 'Sign In Successfully'
      redirect_to root_path
    else
      flash.now[:alert] = 'User does not Exist, Sign up please!!'
      render :new
    end
  end


  def destroy
    @session[:user_id] = nil
    flash[:success] = "Signed Out Successfully"
    redirect_to root_path
  end
end
