class Hardware < ApplicationRecord
	# has_rich_text :information_for_us
	# has_rich_text :information_for_user

	include Placeholder
	# validates_presence_of :main_image, :thumb_image
	
	mount_uploader :thumb_image, ImagesUploader
	mount_uploader :main_image, ImagesUploader

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(width:'600', height:'400')
		self.thumb_image ||= Placeholder.image_generator(width:'320', height:'180')
	end


end
