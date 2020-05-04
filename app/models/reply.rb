class Reply < ApplicationRecord
  belongs_to :account, :post
end
