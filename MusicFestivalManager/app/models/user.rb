class User < ApplicationRecord
  has_secure_password
  
  has_one :schedule
  has_many :transactions, through: :schedule
  has_many :vendors, through: :visits

  def all_vendors
    self.schedule.vendors
  end

  

end
