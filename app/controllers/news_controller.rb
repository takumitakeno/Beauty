class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def show
  end
  
  private
    def news_params
      params.require(:news).permit(:title, :content)
    end
end
