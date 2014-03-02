class SessionController < ApplicationController

  def new
    render(:new)
  end

  def create
    user = User.find_by(username: params[:username])
    # binding.pry
    if user && user.authenticate( params[:password] )
      #huzzah, the password is authenticated!
      session[:user_id] = user.id #ie, create the session
      redirect_to user_path(user)
    else
      @message = "This username and password combination does not exist."
      render(:new)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end