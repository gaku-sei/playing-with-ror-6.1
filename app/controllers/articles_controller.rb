class ArticlesController < ApplicationController
  def index
    articles = Article.all

    render json: articles
  end

  def show
    article = Article.find params[:id]

    render json: article
  end

  def create
    article = Article.new title: article_params[:title], body: article_params[:body]

    if article.save
      render json: article
    else
      render json: { 'no' => 'way' }
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
