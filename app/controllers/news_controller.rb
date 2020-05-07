class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def show
  end
end
