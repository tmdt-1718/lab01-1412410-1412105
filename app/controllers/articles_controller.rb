class ArticlesController < ApplicationController
  before_action :authenticate
  def index
  	@articles = Article.all
  end
end
