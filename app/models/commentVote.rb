class Commentvote < ApplicationRecord
  belongs_to :account
  belongs_to :comment
end
