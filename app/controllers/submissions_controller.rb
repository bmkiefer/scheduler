class SubmissionsController < ApplicationController

  def new
    user_id = params[:user_id]
    id = params[:id] # retrieve level ID from URI route
    complete_flag = params[:complete_flag]
    @user = User.find(user_id)
    @level = Level.find(id)
    @transactions = Transactionlevel.where(:complete_flag => "Completed") #Transactionlevel.where(:user_id => @user.id)
    # will render app/views/level/show.<extension> by default
  end

end
