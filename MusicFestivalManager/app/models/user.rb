class User < ApplicationRecord
  has_secure_password

  has_one :schedule
  has_many :bookings, through: :schedule
  has_many :performances, through: :bookings
  has_many :artists, through: :performances
  has_many :stages, through: :performances

  def self.all_names
    self.all.map(&:first_name)
  end

end
