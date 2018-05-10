class Stage < ActiveRecord::Base
  has_many :performances
  has_many :artists, through: :performances
  has_many :bookings, through: :performances

  def sorted_performances
    self.performances.sort_by {|el| el.start_time}
  end
end
