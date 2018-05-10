class Performance < ActiveRecord::Base
  belongs_to :artist
  belongs_to :stage
  has_many :bookings

  def self.sort_by_start_time
    self.all.sort_by {|el| el.start_time}
  end

end
