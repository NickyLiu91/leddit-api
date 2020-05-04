class Comment < ApplicationRecord
  belongs_to :account, :post
end
