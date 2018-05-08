class User < ApplicationRecord
  has_one :schedule
  has_many :visits, through: :schedule
  has_many :vendors, through: :visits

  def all_vendors
    self.schedule.vendors
  end

end
