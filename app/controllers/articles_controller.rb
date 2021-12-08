class ArticlesController < ApplicationController
  def index 
      @articles = Article.all
  end

  def new
  end
  
  def create
    Article.create(image: article_params[:image], text: article_params[:text])
  end

  def edit
    @article = Article.find(id_params[:id])
  end

  def destroy
    article = Article.fing(id_params[:id])
    article.destroy
  end

  def update
    article = Atricle.fing(id_params[:id])
    article.update(article_params)
  end

  private
    def article_params
      params.permit(:image,:text)
    end

    def id_params
      params.permit(:id)
    end

end
