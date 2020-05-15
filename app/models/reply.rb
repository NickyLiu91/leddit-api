class Reply < ApplicationRecord
  belongs_to :account
  belongs_to :post
  belongs_to :comment
end
