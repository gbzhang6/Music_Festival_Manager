class Visit < ApplicationRecord
  belongs_to :vendor
  belongs_to :schedule
end
