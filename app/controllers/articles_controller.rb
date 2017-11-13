class ArticlesController < ApplicationController

  def index
    @articles = Article.all

    # .search(params) respond_to do |format|
    #   format.html
    #   format.json { render :xml => @listings.to_xml }
    # end
  end



  def new
    @article = Article.new
  end

  def show
    @articles = Article.last(5)
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to root_path
    else
      render action: :new
     end
  end

  private
  def article_params
    params.require(:article)
    .permit(
      :title,
      :description
    )
  end

end
