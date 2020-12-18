class Category < ApplicationRecord
  has_many :artcats
  has_many :articles, through: :artcats
end
