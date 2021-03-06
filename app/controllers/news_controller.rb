class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def index
    @news = News.all.last(3)
  end

  def show
    @news = News.find(params[:id])
  end
  
  def create
    news = News.new(news_params)
    news.save
    binding.pry
    redirect_to new_news_path
  end

  def edit
    @news = News.find(prams[:id])
    @news.update
    redirect_to new_news_path
  end

  def destroy
    news = News.find(params[:id])
    news.destroy
    redirect_to new_news_path
  end

  private
  def news_params
    params.require(:news).permit(:title, :content, :image)
  end

end
