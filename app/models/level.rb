class Level < ActiveRecord::Base
  has_many :transactionlevels, :dependent => :destroy
  has_many :users, :through => :transactionlevels
  has_one :submission
end
