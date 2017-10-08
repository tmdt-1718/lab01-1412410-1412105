class BlogController < ApplicationController
	before_action :authenticate
	def new
		# Code
	end
	def index
		@blogs = Blog.order('updated_at desc')
		@btags = Btag.all
	end
	def show
		@blogs = Blog.find(params[:id])
		if @blog
			@blog.view = @blog.view + 1
		end
		@bcomments = Bcomment.where(blog_id: params[:id])
	end
	def addcomment
		if params[:bcomment][:content]
				Bcomment.create(:content => params[:bcomment][:content], :user_id => session[:current_user]["user_id"], :blog_id => params[:id])
		end
		redirect_back fallback_location: { action: "show", id: params[:id] }
	end
	def myblogs
		@blogs = Blog.where(user_id: session[:current_user]["user_id"])
		@btags = Btag.all
		render :index
	end
	def create
		Blog.create(:title => params[:blog][:title], :content => params[:blog][:content], :user_id => session[:current_user]["user_id"], :view => 0, :useful => 0)
		tags = params[:blog][:tag].split("#")
		tags.each do |index|
			 	@newtag = Tag.find_by_tag_name(index)
				if @newtag
					Btag.create(:tag_id => @newtag.tag_id, :blog_id => Blog.last.blog_id)
				else
					Tag.create(:tag_name => index)
					Btag.create(:tag_id => Tag.last.tag_id, :blog_id => Blog.last.blog_id)
				end
		end
		redirect_to blog_path
	end
	def show_edit
		@blogs = Blog.find(params[:id])
		@btags = Btag.all
	end
	def edit
		blog = Blog.find_by_blog_id(params[:id])
		blog.update(:title => params[:edit_blog][:title], :content => params[:edit_blog][:content])
		@btags = Btag.where(blog_id: params[:id])
		if @btags
			@btags.each do |btag|
				btag.destroy
			end
		end
		tags = params[:edit_blog][:tag].split("#")
		tags.each do |index|
			 	@newtag = Tag.find_by_tag_name(index)
				if @newtag
					Btag.create(:tag_id => @newtag.tag_id, :blog_id => Blog.last.blog_id)
				else
					Tag.create(:tag_name => index)
					Btag.create(:tag_id => Tag.last.tag_id, :blog_id => Blog.last.blog_id)
				end
		end
		redirect_to blog_path
	end
	def edit_blog_params
	  params.require(:edit_blog).permit(:title, :tag, :content)
	end
	def blog_params
	  params.require(:blog).permit(:title, :tag, :content)
	end
	def bcomment_params
	  params.require(:bcomment).permit(:content)
	end
end
