class PostvoteSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :post_id, :like

  belongs_to :account
  belongs_to :post
end
