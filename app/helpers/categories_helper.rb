module CategoriesHelper
  include ArticlesHelper

  def categories
    Category.for_navbar
  end

  def truncated_card_content(content)
    truncated_text = content.split(' ')[0..30].join(' ')
    "#{truncated_text}..."
  end
end
