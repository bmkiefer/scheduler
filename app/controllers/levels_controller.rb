class LevelsController < ApplicationController

  def show
    id = params[:id] # retrieve level ID from URI route
    user_id = params[:user_id]
    @user = User.find(user_id)
    @level = Level.find(id)
    @missions = Mission.order("mission_name ASC")
    @missions_all = []
    @missions.each do |miss|
      if miss.level_id == @level.id
        @missions_all.push(Mission.find(miss.id))
      end
    end

    @transactions = Transactionmission.where(:user_id => @user.id, :level_id => @level.id)
    @transaction = Transactionlevel.find_by_level_id_and_user_id(@level.id,@user.id)
    @submission = Submission.find_by_level_id(@level.id)
    # will render app/views/level/show.<extension> by default
  end

  def index
    #@users = User.all
  end

  def new
    # default: render 'new' template
  end

  def create
    #@user = User.create!(params[:user])
    #flash[:notice] = "#{@user.username} was successfully added."
    #redirect_to users_path
  end

  def edit
    #@user = User.find params[:id]
  end

  def update
    #@user = User.find params[:id]
    #@user.update_attributes!(params[:user])
    #flash[:notice] = "#{@user.username} was successfully updated."
    #redirect_to user_path(@user)
  end

  def destroy
    #@user = User.find(params[:id])
    #@user.destroy
    #flash[:notice] = "User '#{@user.username}' deleted."
    #redirect_to users_path
  end

end
