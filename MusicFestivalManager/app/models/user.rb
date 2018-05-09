class User < ApplicationRecord
  has_secure_password

  has_one :schedule
  has_many :transactions, through: :schedule
  has_many :vendors, through: :visits
  has_many :bookings, through: :schedule
  has_many :performances, through: :bookings
  has_many :artists, through: :performances
  has_many :stages, through: :performances

  def all_vendors
    self.schedule.vendors
  end

  def self.all_names
    self.all.map {|el| el.name}
  end

end
