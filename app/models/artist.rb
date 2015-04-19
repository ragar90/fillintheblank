class Artist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
	mount_uploader :avatar, AvatarUploader
	mount_uploader :portafolio_1, PortafolioUploader
	mount_uploader :portafolio_2, PortafolioUploader
	mount_uploader :portafolio_3, PortafolioUploader
	validates :email, presence: true
	after_validation :set_verifications, on: [ :create, :update ]
	scope :have_specifed_rate, -> { where("min_rate is not null and max_rate is not null") }
	scope :with_payment_between, ->(max_value, min_value) { where("min_rate <= :min_value and max_rate >= :max_value", {min_value: min_value, max_value: max_value}) }
	def avatar_picture
		self.avatar.url.blank? ? "default-avatar.png" : self.avatar.url
	end

	def email_confirmed?
		!self.confirmed_at.nil?
	end

	def set_verifications
		self.phone_verified = !self.phone_number.blank?
		self.profile_completed = self.email_confirmed? and (!self.twitter.blank? or !self.facebook.blank?) and (!self.nickname.blank? or !self.name.blank?) and !self.portafolio_1.blank? and !self.avatar.blank? self.have_specifed_rate? 
	end

	def artist_identifier
		if self.name.present?
			self.name
		elsif self.nickname.present?
			self.nickname
		else
			self.email.split("@")[0]
		end
	end

	def phone_confirmed?
		self.phone_verified
	end

	def profile_completed?
		self.profile_completed
	end

	def have_specifed_rate?
		!self.min_rate.nil? and !self.max_rate.nil?
	end

	def rate_range
		"#{self.min_rate},#{self.max_rate}"
	end

	def rate_range=(rate_range)
		@rate_range = rate_range
		range = rate_range.split(",")
		self.min_rate = range[0]
		self.max_rate = range[1]
	end

end
