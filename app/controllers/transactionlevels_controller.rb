class TransactionlevelsController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @level = Level.find(params[:level_id])
    @transaction = Transactionlevel.where(:level_id => @level.id,:user_id => @user.id)
    @transaction.destroy
    Transactionlevel.create!(:level_id => @level.id, :user_id => @user.id,:complete_flag => "Complete")
    flash[:notice] = "#{@level.level_name} was Completed."
    redirect_to user_path(@user)
    #id = params[:id] # retrieve movie ID from URI route
    #@user = User.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @users = User.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @user = User.create!(params[:user])
    flash[:notice] = "#{@user.username} was successfully added."
    redirect_to users_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @complete_level_flag = true
    @transactions = Transactionmissions.by_user_id_and_level_id(params[:user_id],params[:id])
    @transaction.each do |trans|
      if trans.complete_flag == "Not Complete"
        @complete_level_flag = nil
      end
    end

    if @complete_level_flag
      @user = User.find(params[:user_id])
      @level = Level.find(params[:level_id])
      @transaction = Transactionlevel.find_by_level_id_and_user_id(@level.id,@user.id)
      @transaction.update_attributes!(:level_id => @level.id, :user_id => @user.id,:complete_flag => "Complete")
      flash[:level_complete] = "#{@level.level_name} was Completed by finishing all Missions. Great Job!!"
      redirect_to user_path(@user)
    else
      redirect_to user_level_path(@user,@level)
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to users_path
  end

end
