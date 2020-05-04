class Account < ApplicationRecord
  has_many :posts, :comments, :replies
end
