class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end
	
	def show
	@article = Article.find(params[:id])
	end

	def new
	end

	# Now we are changing the create action to use the new Article model 
	## to save data in the database

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	private 
		def article_params
			params.require(:article).permit(:title, :text)
		end
end





