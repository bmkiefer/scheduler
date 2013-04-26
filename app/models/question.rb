class Question < ActiveRecord::Base
  belongs_to :submission
  has_many :question_responses, :dependent => :destroy
end
