class Mission < ActiveRecord::Base
  belongs_to :level
  has_many :transactionmissions, :dependent => :destroy
end
