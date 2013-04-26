class SubmissionsController < ApplicationController

  def show
    user_id = params[:user_id]
    id = params[:id] # retrieve level ID from URI route
    #question = params[:submission_id]
    complete_flag = params[:complete_flag]
    @user = User.find(user_id)
    @level = Level.find(id)
    @questions = Question.where(:submission_id => params[:id])
   
  end

end
