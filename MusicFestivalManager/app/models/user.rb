class User < ApplicationRecord
  has_secure_password

  has_one :schedule
  has_many :transactions, through: :schedule
  has_many :vendors, through: :visits
  has_many :bookings, through: :schedule
  has_many :performances, through: :bookings
  has_many :artists, through: :performances

  def all_vendors
    self.schedule.vendors
  end

end
