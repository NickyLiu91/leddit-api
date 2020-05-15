class ReplySerializer < ActiveModel::Serializer
  attributes :content

  belongs_to :account
  belongs_to :post
  # belongs_to :comment
end
