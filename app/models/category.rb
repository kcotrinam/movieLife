class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
  validates :priority, presence: true, inclusion: 1..5

  has_many :artcats, dependent: :destroy
  has_many :articles, -> { includes(:avatar_attachment).order('created_at desc') }, through: :artcats

  scope :for_navbar, -> { limit(5) }
  
  def first_article
    arr = self.articles.includes(:avatar_attachment).order(created_at: :desc).first
    arr
  end
end
