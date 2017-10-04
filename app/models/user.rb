<<<<<<< Updated upstream
class User < ApplicationRecord
	has_many :blogs
	has_many :albums
<<<<<<< HEAD

	include BCrypt
	def password
	  @password ||= Password.new(self.password_hash)
	end
	def password=(new_password)
	  @password = Password.create(new_password)
		self.password_hash = @password
	end
=======
	has_many :photos
>>>>>>> master
end
=======
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
>>>>>>> Stashed changes
