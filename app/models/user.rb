class User < ActiveRecord::Base
  has_many :transactions, :dependent => :destroy
  has_many :levels, :through => :transactions
end 
