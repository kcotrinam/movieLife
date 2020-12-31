class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: %i[create new]
  before_action :find_category, only: %i[show edit update]

  def index
    @categories = Category.all.order(priority: :desc)
    @voted_article = Article.get_most_votes
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'Category successfully created'
      redirect_to categories_path
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def show
    @articles = @category.articles
  end

  def edit;end

  def update
    if @category.update_attributes(category_params)
      flash[:success] = 'Category was successfully updated'
      redirect_to @category
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
