class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :schedule

  validate :overlapping_time_for_performances

  def overlapping_time_for_performances
    #all bookings for specific instance of user
    self.schedule.bookings.each do |other_booking|
      if (start_time >= other_booking.end_time) && (end_time <= other_booking.start_time)
        redirect_to schedule_path
      else
        booking.errors.full_messages
      end
    end

end
