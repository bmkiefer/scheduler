class Venue < ActiveRecord::Base
  has_many :reservations
end
