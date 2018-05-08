class Artist < ActiveRecord::Base
  has_one :performance
  has_one :stage, through: :performance
  has_many :bookings, through: :performance
end
