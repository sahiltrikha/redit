class UsersController < ApplicationController

  def new
    @user = User.new
    render :new 
  end 

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  
  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def authorize
  end

end