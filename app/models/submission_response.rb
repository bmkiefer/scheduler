class SubmissionResponse < ActiveRecord::Base
  belongs_to :submission
  belongs_to :user
  has_many :question_responses
end
