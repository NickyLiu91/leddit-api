class CommentSerializer < ActiveModel::Serializer
  attributes :content

  # has_many :replies
  belongs_to :account
  belongs_to :post
end
