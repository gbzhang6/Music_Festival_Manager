class User < ApplicationRecord
  has_secure_password
  
  has_one :schedule
  has_many :visits, through: :schedule
  has_many :vendors, through: :visits

  def all_vendors
    self.schedule.vendors
  end

  # def all_items
  #   self.all_vendors.each do |vendor|
  #   end
  # end

end
