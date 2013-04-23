class Users < ActiveRecord::Base
	attr_accessible :id, :firstname, :lastname, :username, :password, :email
	has_many :galleries
	has_one :profile

	 validates_presence_of :firstname, :notice => 'First Name required'
	 validates_presence_of :username
	 validates_presence_of :password
	 validates_presence_of :email
end
