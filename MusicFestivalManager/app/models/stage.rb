class Stage < ActiveRecord::Base
  has_many :performances
  has_many :artists, through: :performances
  has_many :bookings, through: :performances
end
