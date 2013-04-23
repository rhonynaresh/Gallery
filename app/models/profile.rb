class Profile < ActiveRecord::Base
	attr_accessible :user_id, :mobile, :location, :image
	belongs_to :users
	mount_uploader :image, ImageUploader
end
