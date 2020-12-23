module CategoriesHelper
  def categories
    Category.for_navbar
  end
  
end
