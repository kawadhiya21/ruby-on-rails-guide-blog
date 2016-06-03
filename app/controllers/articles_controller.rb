class ArticlesController < ApplicationController
	def new
	end

	def create
		@article = Article.new(params.require(:article).permit(:title, :text))

        if @article.save
            redirect_to @article
        else
            render plain: "Did not save"
        end
	end

    def show
        @article = Article.find(params[:id])
    end
end
