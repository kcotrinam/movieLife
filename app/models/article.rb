class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_one_attached :avatar
  has_many :artcats
  has_many :categories, through: :artcats

  has_many :votes
  has_many :voters, through: :votes, class_name: 'User'

  scope :get_most_votes, -> { joins(:votes).group('articles.id').order('count(votes.id) desc').first }

  # scope :featured, lambda {
  #   joins(:votes)
  #     .select('articles.*')
  #     .order('COUNT(votes.article_id) DESC')
  #     .group('articles.title, articles.id').limit(1).take
  # }
end
