class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_one_attached :avatar
  has_many :artcats
  has_many :categories, through: :artcats
end
