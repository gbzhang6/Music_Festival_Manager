class Artist < ActiveRecord::Base
  has_many :performances
  has_one :stage, through: :performances
  has_many :bookings, through: :performances
end
