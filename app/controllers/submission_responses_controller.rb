class SubmissionResponsesController < ApplicationController

  def new	
  end

  def index
  end

  def create
    
  end

  def edit
  end

  def update
    @level = Level.find(params[:level_id]
    @submission_responses = Submission.create(:submission_id => params[:submission_id], :user_id => params[:user_id], :rate => params[:submission][:rating])
    @all_questions = Question.find_by_submission_id(params[:submission_id])
    @all_questions.each do |q|
	QuestionResponse.create(:question_id => q.id, :submission_response_id => @submission_response.id, :response => params[:response])
    end 

    redirect_to user_level_path(@level)
  end

  def destroy
  end

  def show
  end
end
