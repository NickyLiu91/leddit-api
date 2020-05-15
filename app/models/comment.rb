class Comment < ApplicationRecord
  has_many :replies
  belongs_to :account
  belongs_to :post
end
