class User < ApplicationRecord
  has_many :bookings
  has_many :performances, through: :bookings
  belongs_to :lodging
end
