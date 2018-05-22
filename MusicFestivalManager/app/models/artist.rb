class Artist < ActiveRecord::Base
  has_one :performance
  has_one :stage, through: :performance
  has_many :bookings, through: :performance

  def self.sort_by_name
    self.all.sort_by {|el| el.name}
  end
end
