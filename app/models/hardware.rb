class Hardware < ApplicationRecord
	has_rich_text :information_for_us
	has_rich_text :information_for_user

	mount_uploader :thumb_image, ImagesUploader
	mount_uploader :main_image, ImagesUploader

	def set_defaults
		self.main_image
		self.thumb_image
	end

end
