class PostvoteSerializer < ActiveModel::Serializer
  attributes :account, :post, :like

  belongs_to :account
  belongs_to :post
end
