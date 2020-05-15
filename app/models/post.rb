class Post < ApplicationRecord
  belongs_to :account
  has_many :posts
  has_many :replies, through: :comments
end
