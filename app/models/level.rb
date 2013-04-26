class Level < ActiveRecord::Base
  has_many :transactionlevels, :dependent => :destroy
  has_many :users, :through => :transactionlevels
  has_many :transactionmissions, :dependent => :destroy
  has_many :missions, :through => :transactionmissions 
end
