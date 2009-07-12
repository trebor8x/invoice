class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  # render new.rhtml
  def new
    @user = User.new
  end
  
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      # self.current_user = @user # !! now logged in
      redirect_back_or_default('/')
      flash[:notice] = "Thanks for signing up!"
    else
      flash[:error]  = "We couldn't set up that account, sorry. Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
  
  def deactivate
    User.find(params[:id]).deactivate!
    redirect_to users_path
  end
  
  def activate
    User.find(params[:id]).activate!
    redirect_to users_path
  end
  
end
