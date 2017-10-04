class PhotoController < ApplicationController
	before_action :authenticate
	def index
		@photos = Album.find_by(id: params[:album_id]).photos
	end
end
