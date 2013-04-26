class Transactionmission < ActiveRecord::Base
  belongs_to :user
  belongs_to :level
  belongs_to :mission
end
