module CategoriesHelper
  include ArticlesHelper

  def categories
    Category.for_navbar
  end

  def card_content(content)
    truncated_text = content[0..50]
    "#{truncated_text}..."
  end
end
