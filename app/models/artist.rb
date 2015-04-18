class Artist < ActiveRecord::Base
	mount_uploader :portafolio_1, PortafolioUploader
	mount_uploader :portafolio_2, PortafolioUploader
	mount_uploader :portafolio_3, PortafolioUploader
end
