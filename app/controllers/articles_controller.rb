class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @article = current_user.articles.new(article_params)
    @categories = Category.all.map { |c| [c.name, c.id] }

    if @article.save
      @article.categories << Category.find_by(id: params[:categories])
      flash[:success] = 'New article created!'
      redirect_to @article
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = 'Article was successfully updated'
      redirect_to @article
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :avatar)
  end
end
