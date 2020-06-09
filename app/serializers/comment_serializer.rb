class CommentSerializer < ActiveModel::Serializer
  attributes :content, :parent_id

  belongs_to :account
  belongs_to :post
end
