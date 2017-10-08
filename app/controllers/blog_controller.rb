<<<<<<< HEAD
class BlogController < ApplicationController
	before_action :authenticate
	def index
		@blogs = Blog.all
	end

	def show
		@blogs = Blog.find(params[:id])
	end
end
=======
class BlogController < ApplicationController
	before_action :authenticate
	def index
		@blogs = Blog.all
	end

	def show
		@blogs = Blog.find(params[:id])
	end
end

>>>>>>> master
