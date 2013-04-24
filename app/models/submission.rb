class Submission < ActiveRecord::Base
  belongs_to :level
  belongs_to :mission
  has_many :questions
  has_many :submission_responses
  has_many :question_responses, :through => :submission_responses
end
