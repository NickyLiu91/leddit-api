class CommentSerializer < ActiveModel::Serializer
  attributes :content

  belongs_to :account
  belongs_to :post
  belongs_to :parent

  has_many :children

end
