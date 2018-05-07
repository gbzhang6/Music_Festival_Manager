class Transaction < ApplicationRecord
  belongs_to :schedule
  belongs_to :vendor
  has_many :items, through: :vendor
end
