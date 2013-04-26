class Profile < ActiveRecord::Base
  belongs_to :user
#attr_accessible :first_name,:last_name,:total_score,:user_id
end
