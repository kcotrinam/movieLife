class Category < ApplicationRecord
  has_many :artcats
  has_many :articles, -> { order(created_at: :desc) }, through: :artcats
end
