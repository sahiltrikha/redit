class UsersController < ApplicationController

  before_action :authenticate, :load_user, only: [:show]

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
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email)
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def load_user
    return @user = User.find(params[:id])
  end

  def authorize
    unless current_user == @user
      redirect_to login_path
    end
  end
end