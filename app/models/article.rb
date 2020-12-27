class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_one_attached :avatar
  has_many :artcats, dependent: :destroy
  has_many :categories, through: :artcats

  has_many :votes
  has_many :voters, through: :votes, class_name: 'User'

  scope :get_most_votes, -> { joins(:votes).group('articles.id').order('count(votes.id) desc').first }
end
