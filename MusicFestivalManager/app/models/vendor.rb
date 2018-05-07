class Vendor < ApplicationRecord
  has_many :transactions
  has_many :items
  has_many :users, through: :transactions
end
