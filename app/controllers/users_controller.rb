class UsersController < ApplicationController

  

  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up movie by unique ID
    @users_all = User.order("total_score DESC")
    @levels_all = Level.order("level_name ASC")
    @transactions = Transactionlevel.where(:user_id => @user.id)
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @users = User.all
  end
  
  def new
    # default: render 'new' template
  end

  def create    
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:notice] = "#{@user.username}, Welcome to Technology Education"
      @all_levels = Level.all 
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
