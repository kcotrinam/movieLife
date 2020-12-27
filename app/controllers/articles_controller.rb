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
    @votes = @article.votes.count
  end

  def edit
    @article = Article.find(params[:id])
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def update
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:success] = 'Article was successfully deleted.'
      redirect_to root_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to root_url
    end
  end
  

  private

  def article_params
    params.require(:article).permit(:title, :content, :avatar)
  end
end
