class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :level

  def self.all_ratings
    %w(1 2 3 4 5)
  end
end
