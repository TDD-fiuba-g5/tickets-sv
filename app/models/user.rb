class User < ApplicationRecord

	has_secure_password
	
	has_and_belongs_to_many :projects

	validates :name, uniqueness: true
	validates :name, presence: true
	validates :password, presence: true

end
