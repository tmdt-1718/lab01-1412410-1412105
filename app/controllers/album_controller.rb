<<<<<<< HEAD
class AlbumController < ApplicationController
	before_action :authenticate
	def index
		@albums = Album.all
	end

	def show
		@albums = Album.find(params[:id])
	end
end
=======
class AlbumController < ApplicationController
	before_action :authenticate
	def index
		@albums = Album.all
	end

	def show
		@albums = Album.find(params[:id])
	end
end

>>>>>>> master
