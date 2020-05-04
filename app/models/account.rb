class Account < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :replies
end
