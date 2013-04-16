class Users < ActiveRecord::Base
	attr_accessible :firstname, :lastname, :username, :password, :email

	 validates :firstname, presence: true
	 validates :username, presence: true
	 validates :password, presence: true
end
