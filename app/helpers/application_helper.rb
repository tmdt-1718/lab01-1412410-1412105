module ApplicationHelper
	def home_active?
		['home'].index(params[:controller]).present?
	end

	def album_active?
		['album'].index(params[:controller]).present?
	end

	def about_active?
		['about'].index(params[:controller]).present?
	end

	def blog_active?
		['blog'].index(params[:controller]).present?
	end

end
