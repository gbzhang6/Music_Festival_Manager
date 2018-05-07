class Schedule < ActiveRecord::Base
  has_many :bookings
  has_many :transactions
  belongs_to :user
end
