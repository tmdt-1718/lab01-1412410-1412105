class AlbumController < ApplicationController
	before_action :authenticate
	def index
		@albums = Album.all
	end

	def show
		@photos = Photo.where(album_id: params[:id])
	end
end
