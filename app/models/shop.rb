class Shop < ApplicationRecord
	attachment :shop_image
	has_many :favorites, dependent: :destroy
	has_many :favorite_users, through: :favorites, source: :user
	validates :shop_info, length: { in: 20..76}

	def favorite_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end
