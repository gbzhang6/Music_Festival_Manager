class Vendor < ApplicationRecord
  has_many :visits
  has_many :items
  has_many :users, through: :visits
end
