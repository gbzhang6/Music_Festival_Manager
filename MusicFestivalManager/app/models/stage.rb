class Stage < ActiveRecord::Base
  belongs_to :venue
  has_many :performances
  has_many :artists, through: : performances
  has_many :bookings, through: : performances
end