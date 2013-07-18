class VenuesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @venue = Venue.find(id) # look up movie by unique ID
    @user = User.find(params[:user_id])
  end

  def index
    @user = User.find(params[:user_id])
    @venues = Venue.all
  end
  
  def new
    # default: render 'new' template
  end

  def create
    if User.find_by_username(params[:user][:username])
      flash[:notice] = "#{params[:user][:username]} is already taken as a username."
      flag_username = nil
    else
      flag_username = true
    end
    if User.find_by_email(params[:user][:email])
      flash[:notice] = "#{params[:user][:email]} is already linked to an account."
      flag_email = nil
    else
      flag_email = true
    end
    @user = User.new(params[:user])
    if @user.save && flag_username && flag_username
      sign_in @user
      flash[:notice] = "#{@user.username}, Welcome to Technology Education"
      @all_levels = Level.all 
      @profile_array = params[:profile]
      @profile_array[:user_id] = @user.id
      Profile.create!(@profile_array)
      @all_levels.each do |level|
        Transactionlevel.create(:complete_flag => "Not Complete",:user_id => @user.id,:level_id => level.id)
        Mission.where(:level_id => level.id).each do |mission_obj|
        Transactionmission.create!(:complete_flag => "Not Complete",:user_id => @user.id,:level_id => level.id, :mission_id => mission_obj.id)
      end
      end
      redirect_to @user
    else
      render 'new'
    end
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
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to home_path
  end

end
