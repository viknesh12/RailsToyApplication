class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      #success scenario
      log_in user
      remember user
      redirect_back_or user
    else
      #failure scenario - some one is trying to login into system
      redirect_to :action => "create"
    end
  end
  
  def destroy
    log_out 
    redirect_to root_url 
  end
  
end
