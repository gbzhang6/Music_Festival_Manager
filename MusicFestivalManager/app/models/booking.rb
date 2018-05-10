class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :schedule
  delegate :artist, to: :performance
  delegate :stage, to: :performance
  delegate :start_time, to: :performance
  delegate :end_time, to: :performance
  validate :cannot_have_duplicate_performances
  # validates :performance_id, uniqueness: true
  # validates :overlapping_time_for_performances

  # def overlapping_time_for_performances
  #   #all bookings for specific instance of user
  #   self.schedule.bookings.each do |other_booking|
  #     if (start_time >= other_booking.end_time) && (end_time <= other_booking.start_time)
  #       redirect_to schedule_path
  #     else
  #       self.schedule.bookings.errors.full_messages
  #     end
  #   end
  # end

  def cannot_have_duplicate_performances
    if booked_performance_ids.include?(performance_id)
      self.errors.add(:performance_id, "is already booked!")
    end
  end

  def booked_performance_ids
    Schedule.find(schedule_id).bookings.map {|el| el.performance.id}
  end

  def artist_name
    self.artist.name
  end

  def stage_name
    self.stage.name
  end

end
