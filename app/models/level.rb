class Level < ActiveRecord::Base
  has_many :transactions, :dependent => :destroy
  has_many :users, :through => :transactions
end
