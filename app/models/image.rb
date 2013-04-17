class Image < ActiveRecord::Base
	def image_file(input_data)
    	self.filename = input_data.original_filename
    	self.content_type = input_data.content_type.chomp
    	self.binary_data = input_data.read
  	end

  	attr_accessible :image, :gallery_id
  	belongs_to :gallery
 	mount_uploader :image, ImageUploader
end
