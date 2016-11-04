class VideoArticlesController < ApplicationController
  def index
    @video_articles = VideoArticle.all
  end

  def show
    @video_article = VideoArticle.find(params[:id])
  end

  def new
    @video_article = VideoArticle.new
  end

  def create
    @video_article = VideoArticle.new(safe_params)
    if @video_article.save
      redirect_to video_articles_path
    else
      flash[:error] == @video_articles.errors
      render :new
    end
  end

  def edit
    @video_article = VideoArticle.find(params[:id])
  end

  def update
    @video_article = VideoArticle.find(params[:id])
    if @video_article.update(safe_params)
      redirect_to video_articles_path
    else
      flash[:error] == @video_articles.errors
      render :new
    end
  end

  def destroy
    @video_article = VideoArticle.find(params[:id])
  end

  private

  def safe_params
    params.require(:video_article).permit(:title, :content)
  end
end
