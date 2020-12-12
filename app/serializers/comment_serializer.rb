class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :account, :parent

  belongs_to :account
  belongs_to :post
  belongs_to :parent

  has_many :children

end
