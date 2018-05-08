class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :schedule
  delegate :artist, to: :performance
  delegate :stage, to: :performance

  def booking_by_time

  end

end
