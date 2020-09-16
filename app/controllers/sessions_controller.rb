class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by_name(params[:id])
    if user    
      session[:user] = user.id
      flash[:success] = 'Sign In Successfully'
      redirect_to root_path
    else
      flash.now[:alert] = 'User does not Exist, Sign up please!!'
      render :new
    end
  end


  def destroy
    session[:user] = nil
    flash[:success] = "Signed Out Successfully"
    redirect_to root_path
  end
end
