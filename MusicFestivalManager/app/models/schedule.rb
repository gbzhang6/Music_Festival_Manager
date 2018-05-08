class Schedule < ActiveRecord::Base
  has_many :bookings
  has_many :performances, through: :bookings
  has_many :visits
  has_many :vendors, through: :visits
  has_one :user

  def all_items

  end
end
