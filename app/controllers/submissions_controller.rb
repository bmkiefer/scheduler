class SubmissionsController < ApplicationController

  def new

    #@user = User.new(:user_id => @user.id)
    #@user = '3'
    user_id = params[:user_id]
    id = params[:id] # retrieve level ID from URI route
    #puts id
    ##user_id = params[:user_id]
    @user = User.find(user_id)
    @level = Level.find(id)
    #@transaction = Transactionlevel.find_by_level_id_and_user_id(@level.id,@user.id)
    # will render app/views/level/show.<extension> by default
  end

end
