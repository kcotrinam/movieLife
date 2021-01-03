class Article < ApplicationRecord
  validates :author_id, :title, :content, presence: true
  validates :title, length: { minimum: 3 }
  validates :content, length: { minimum: 10 }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_one_attached :avatar
  has_many :artcats, dependent: :destroy
  has_many :categories, through: :artcats

  has_many :votes
  has_many :voters, through: :votes, class_name: 'User'

  scope :get_most_votes, -> { joins(:votes).group('articles.id').order('count(votes.id) desc').first }
  # Ex:- scope :active, -> {where(:active => true)}
end
