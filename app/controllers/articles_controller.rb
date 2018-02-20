class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article), notice: 'Article succesfully created'
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article), notice: 'Article succesfully updated'
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: 'Article succesfully destroyed'
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end


end
