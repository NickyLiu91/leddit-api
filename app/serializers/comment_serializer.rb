class CommentSerializer < ActiveModel::Serializer
  attributes :content

  belongs_to :account
  belongs_to :post
end
