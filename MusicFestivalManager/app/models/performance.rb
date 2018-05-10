class Performance < ActiveRecord::Base
  belongs_to :artist
  belongs_to :stage
  has_many :bookings

  def self.sort_by_start_time
    self.all.sort_by {|el| el.start_time}
  end

  def start_time_to_minutes
    hr_to_minutes = self.start_time.hour * 60
    minutes = self.start_time.min
    minutes + hr_to_minutes
  end

  def end_time_to_minutes
    hr_to_minutes = self.end_time.hour * 60
    minutes = self.end_time.min
    minutes + hr_to_minutes
  end

end
