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

  def create
    @article = Article.new(safe_params)
    if @article.save
      redirect_to articles_path
    else
      flash[:error] == @articles.errors
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def safe_params
    params.require(:article).permit(:title, :content)
  end
end
