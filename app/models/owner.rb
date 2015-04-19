class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :blank_walls

  def nickname
  	if self.name.blank?
  		self.email.split("@")[0]
  	else
  		self.name
  	end
  end
end
