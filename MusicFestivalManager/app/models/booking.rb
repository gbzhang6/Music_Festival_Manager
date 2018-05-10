class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :schedule
  delegate :artist, to: :performance
  delegate :stage, to: :performance
  delegate :start_time, to: :performance
  delegate :end_time, to: :performance
  validate :cannot_have_duplicate_performances
  validate :performance_times_cannot_overlap

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

  def performance_times_cannot_overlap
    Schedule.find(schedule_id).bookings.each do |booking|
      if booking.duration_range.include?(self.performance.start_time_to_minutes)
        errors.add(:start_time, "Performance Times Overlap")
      end
    end
  end

  def duration_range
    (self.start_mins..self.end_mins).to_a
  end

  def start_mins
    self.performance.start_time_to_minutes
  end

  def end_mins
    self.performance.end_time_to_minutes
  end



  def find_duration
    start_t = self.performance.end_time_to_minutes
    end_t = self.performance.start_time_to_minutes
    end_t - start_t
  end

  def artist_name
    self.artist.name
  end

  def stage_name
    self.stage.name
  end

end
