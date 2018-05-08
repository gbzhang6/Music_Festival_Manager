class Booking < ApplicationRecord
  belongs_to :performance
  belongs_to :schedule
  delegate :artist, to: :performance
  delegate :stage, to: :performance
  delegate :start_time, to: :performance
  delegate :end_time, to: :performance
  validates :performance_id, uniqueness: true

  def artist_name
    self.artist.name
  end

  def stage_name
    self.stage.name
  end

end
