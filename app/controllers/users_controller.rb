class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #edit to be desc
    @accepted = Request.where(:status => 'accepted')
    @declined = Request.where(:status => 'declined')
    @canceled = Request.where(:status => 'canceled')
    @pending = Request.where(:status => 'pending')
  end

  def index
    @users = User.all
  end
  
  def new
    # default: render 'new' template
  end

  def create
   
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes!(params[:user])
    flash[:notice] = "#{@user.username} was successfully updated."
    sign_in @user
    redirect_to user_path(@user)
  end

  def destroy
  end

end
