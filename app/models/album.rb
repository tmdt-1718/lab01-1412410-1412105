class Album < ApplicationRecord
	belongs_to :user, optional: true

end
