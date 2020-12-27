class Category < ApplicationRecord
  has_many :artcats, dependent: :destroy
  has_many :articles, -> { order(created_at: :asc) }, through: :artcats

  scope :for_navbar, -> { limit(5) }
end
