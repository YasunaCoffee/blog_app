class ArticlesController < ApplicationController
  
  before_action :set_article, only:[:show, :edit, :update, :destroy]
  
  def index 
    @articles = Article.order(updated_at: :desc)
  end

  def new
    @article = Article.new
  end
  
  def create
    article = Article.new(article_params)
    if article.save!
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def destroy
    if @article.destroy
      redirect_to root_path
    else
      redirect_to @article
    end
  end

  def update
    if @article.update(article_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def search
    @articles = Article.where("title LIKE(?)", "#{params[:search]}%")
  end

  private
    def article_params
      params.require(:article).permit(:image,:title,:description,:price)
    end

    def set_article
      @article = Article.find(params[:id])
    end

end
