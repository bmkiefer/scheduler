class Level < ActiveRecord::Base
  has_many :transactionlevels, :dependent => :destroy
  has_many :users, :through => :transactionlevels
end
