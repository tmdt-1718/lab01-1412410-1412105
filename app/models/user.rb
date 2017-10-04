class User < ApplicationRecord
	has_many :blogs
	has_many :albums

	include BCrypt
	def password
	  @password ||= Password.new(self.password_hash)
	end
	def password=(new_password)
	  @password = Password.create(new_password)
		self.password_hash = @password
	end
end
