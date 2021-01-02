class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article, only: %i[show update destroy]

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
    @votes = @article.votes.count
  end

  def edit
    @article = Article.find(params[:id])
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def update
    @categories = Category.all.map { |c| [c.name, c.id] }
    if @article.update(article_params)
      @article.artcats.first.delete
      @article.categories << Category.find_by(id: params[:categories])
      flash[:success] = 'Article was successfully updated'
      redirect_to @article
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    if @article.destroy
      flash[:success] = 'Article was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to root_url
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :avatar)
  end

  def find_article
     @article = Article.find(params[:id])
  end
end
