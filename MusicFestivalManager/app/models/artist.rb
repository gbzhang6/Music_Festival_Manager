class Artist < ActiveRecord::Base
  has_one :performances
  has_one :stage, through: :performances
  has_many :bookings, through: :performances
end
