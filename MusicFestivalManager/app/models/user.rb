class User < ApplicationRecord
  has_one :schedule
  has_many :transactions
  has_many :vendors, through: :transactions
end
