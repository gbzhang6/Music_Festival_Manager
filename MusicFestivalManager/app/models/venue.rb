class Venue < ApplicationRecord
  has_many :stages
  has_many :vendors
  has_many :staffs
  
  has_many :accesses
  has_many :users, through: :accesses
end
