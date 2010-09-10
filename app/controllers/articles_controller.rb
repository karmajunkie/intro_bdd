class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    if @article.valid?
      @article.save
      redirect_to root_url, :notice => "New article created"
    else
      render :new
    end
  end
end
