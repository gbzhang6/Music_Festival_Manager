class User < ApplicationRecord
  has_secure_password

  has_one :schedule
  has_many :bookings, through: :schedule
  has_many :performances, through: :bookings
  has_many :artists, through: :performances
  has_many :stages, through: :performances

  validates :name, uniqueness: true
  validates :name, :first_name, :last_name, :gender, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 120 }
  validates :name, length: { minimum: 3 }
  validates :password, length: { in: 6..20 }
  validates :password, confirmation: true

  def self.all_names
    self.all.map(&:name)
  end

end
