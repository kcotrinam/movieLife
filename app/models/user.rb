class User < ApplicationRecord
  validates :name, :username, :email, presence: true, length: {minimum: 3, maximum: 30}
  validates :username, :email, uniqueness: true
end
