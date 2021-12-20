class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :account, :parent, :children, :deleted

  belongs_to :account
  belongs_to :post
  belongs_to :parent

  has_many :children

end
