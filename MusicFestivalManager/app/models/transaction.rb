class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :vendor
  has_many :items, through: :vendor
end
