class Artist < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	mount_uploader :portafolio_1, PortafolioUploader
	mount_uploader :portafolio_2, PortafolioUploader
	mount_uploader :portafolio_3, PortafolioUploader
	validates :email, :nickname, :portafolio_1, presence: true

	def avatar_picture
		self.avatar.blank? ? "default-avatar.png" : self.avatar
	end
end
