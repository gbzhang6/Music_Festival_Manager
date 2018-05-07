class Artist < ActiveRecord::Base
  has_many :performances
  has_one :stage, through: : performances
  has_one :venue, through: : stages
  has_many :bookings, through: : performances
end
