class Reservation < ApplicationRecord
  belongs_to :shop
  belongs_to :user
end
