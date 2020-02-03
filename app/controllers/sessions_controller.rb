class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user.authenticate(params[:session][:password])
      log_in @user
      flash.now[:success] = "Welcome, #{current_user.name}"
      remember @user
      render 'new'
    else
      flash.now[:danger] = 'email/password combination invalid.'
      render 'new'
    end
  end

  def destroy
    forget
    flash.now[:success] = 'Logged Out!'
    redirect_to login_path 
  end
end
