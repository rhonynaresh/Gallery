class Gallery < ActiveRecord::Base
	attr_accessible :name, :description, :user_id
	has_many :images
end
