class SessionsController < ApplicationController
  def new
    @session = @user
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      session[:user_id] = @user.id
      flash[:success] = "#{@user.name} Logged In Successfully"
      redirect_to root_path
    else
      flash.now[:alert] = 'User does not Exist, Register please!!'
      render :new
    end
  end

  def destroy
    @session[:user_id] = nil
    flash[:success] = 'Logged Out Successfully'
    redirect_to root_path
  end
end
