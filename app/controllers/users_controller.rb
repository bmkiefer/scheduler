class UsersController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up movie by unique ID
    @profilescore_all = Profile.order("total_score DESC")
    @users_all = []
    @profilescore_all.each do |profile|
      @users_all.push(User.find(profile.user_id))
    end
    @levels_all = Level.order("level_name ASC")
    @transactions = Transactionlevel.where(:user_id => @user.id)
    @profile = Profile.find_by_user_id(id)

    @subs = SubmissionResponse.order("created_at DESC")
    @subs_responses = @subs.where(:user_id => @user.id)
    @my_submissions = []
    i = 0
    @subs_responses.each do |sub|
      if ((sub.user_id == @user.id) && (i < 5))
         @my_submissions.push(sub)
	 i=i+1
      end
    end
  end

  def index
    @users = User.all
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
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to home_path
  end

end
