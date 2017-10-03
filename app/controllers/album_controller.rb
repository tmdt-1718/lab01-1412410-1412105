class AlbumController < ApplicationController
	def index
		@albums = Album.all
	end

	def show
		@albums = Album.find(params[:id])
	end
end
