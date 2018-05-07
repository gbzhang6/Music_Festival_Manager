class Item < ApplicationRecord
  belongs_to :vendor
  belongs_to :transaction, through: :vendor
end
