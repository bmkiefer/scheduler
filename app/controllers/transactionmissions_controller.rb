class TransactionmissionsController < ApplicationController

  def show
  end

  def index
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
    @user = User.find(params[:user_id])
    @level = Level.find(params[:level_id])
    @mission = Mission.find(params[:mission_id])
    @profile = Profile.find_by_user_id(params[:user_id])
    @transaction = Transactionmission.find_by_level_id_and_user_id_and_mission_id(@level.id,@user.id,@mission.id)
    if @transaction.complete_flag == "Not Complete"
      @profile.total_score = (@profile.total_score + @mission.points)
      @profile.update_attributes!(:user_id => @profile.user_id,:first_name => @profile.first_name, :last_name => @profile.last_name, :total_score => @profile.total_score)
      @transaction.update_attributes!(:level_id => @level.id, :user_id => @user.id,:mission_id => @mission.id, :complete_flag => "Complete")
      flash[:notice] = "#{@mission.mission_name} was Completed. Great Job!! #{@mission.points} Points Awarded"
      @complete_level_flag = true
      #@transactions = Transactionmission.where(:user_id => params[:user_id], :level_id => params[:level_id])
      @transactions = SubmissionRespose.where(:user_id => params[:user_id], :level_id => params[:level_id])
      @transactions.each do |trans|
        if trans.complete_flag == "Not Complete"
          @complete_level_flag = nil
        end
      end

      if @complete_level_flag
        @transaction_level = Transactionlevel.find_by_level_id_and_user_id(@level.id,@user.id)
        @transaction_level.update_attributes!(:level_id => @level.id, :user_id => @user.id,:complete_flag => "Complete")
        flash[:level_complete] = "#{@level.level_name} was Completed by finishing all Missions. Great Job!!"
        redirect_to user_path(params[:user_id])
      else
        redirect_to user_level_path(params[:user_id],params[:level_id])
      end
    else
      flash[:notice] = "#{@mission.mission_name} was already Completed."
      redirect_to user_level_path(params[:user_id],params[:level_id])
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to users_path
  end

end
