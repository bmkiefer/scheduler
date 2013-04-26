class QuestionResponse < ActiveRecord::Base
  belongs_to :question
  belongs_to :submission_response
end
