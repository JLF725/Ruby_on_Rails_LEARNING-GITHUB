class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end
	
	def show
	@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	# Now we are changing the create action to use the new Article model 
	## to save data in the database

	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	private 
		def article_params
			params.require(:article).permit(:title, :text)
		end
end





