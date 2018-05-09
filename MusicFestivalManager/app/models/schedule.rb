class Schedule < ActiveRecord::Base
  has_many :bookings
  has_many :performances, through: :bookings
  has_many :transactions
  has_many :vendors, through: :transactions
  belongs_to :user

  def bookings_by_time
    self.bookings.all.sort_by {|el| el.start_time}
  end

  def find_user_schedule(user_name)
    @user = User.find_by(name: user_name)
  end

end
