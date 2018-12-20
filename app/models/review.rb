class Review < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  validates :user_id, :uniqueness => {:scope => :shop_id}
  validates :content, length: { maximum: 300}
end
