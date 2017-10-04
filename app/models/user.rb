class User < ApplicationRecord
	has_many :blogs
	has_many :albums
end
