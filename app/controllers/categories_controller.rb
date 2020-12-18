class CategoriesController < ApplicationController
  def index
    
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

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
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
end
