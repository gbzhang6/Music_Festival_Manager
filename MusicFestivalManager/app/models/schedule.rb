class Schedule < ActiveRecord::Base
  has_many :bookings
  has_many :performances, through: :bookings
  has_many :transactions
  has_many :vendors, through: :transactions
  has_one :user

  def bookings_by_time
    self.bookings.all.sort_by {|el| el.start_time}
  end
end
