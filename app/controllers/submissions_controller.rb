class SubmissionsController < ApplicationController

  def show
    user_id = params[:user_id]
    level_id = params[:level_id] # retrieve level ID from URI route
    id = params[:id]
    #question = params[:submission_id]
    complete_flag = params[:complete_flag]
    @user = User.find(user_id)
    @level = Level.find(level_id)
    @submission = Submission.find(id)
    @questions = Question.where(:submission_id => params[:id])
   
  end

end
