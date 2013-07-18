class Reservation < ActiveRecord::Base
  belongs_to :venue
  belongs_to :game
  belongs_to :user
  has_many :posts
end
