class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
  validates :priority, presence: true, inclusion: 1..5

  has_many :artcats, dependent: :destroy
  has_many :articles, -> { order('created_at asc') }, through: :artcats

  scope :for_navbar, -> { limit(5) }
end
