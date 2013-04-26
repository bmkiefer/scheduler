class ProfilesController < ApplicationController

  

  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up movie by unique ID
    @users_all = User.order("total_score DESC")
    @levels_all = Level.order("level_name ASC")
    @transactions = Transactionlevel.where(:user_id => @user.id)
    @profile = Profile.find_by_user_id(id)
    # will render app/views/movies/show.<extension> by default
  end

  def index
    #@users = User.all
  end
  
  def new
    # default: render 'new' template
  end

  def create    
    
  end

  def edit
    #@user = User.find params[:id]
  end

  def update
    @user = User.find params[:user_id]
    @profile = Profile.find_by_user_id(@user.id)
    @profile_hash = params[:profile]
    @profile_hash[:total_score] = @profile.total_score
    @profile_hash[:user_id] = @user.id
    @profile.update_attributes!(@profile_hash)
    flash[:notice] = "#{@user.username} was successfully updated."
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to home_path
  end

end
