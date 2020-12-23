module CategoriesHelper
  include ArticlesHelper
  
  def categories
    Category.for_navbar
  end

end
