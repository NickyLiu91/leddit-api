class PostvoteSerializer < ActiveModel::Serializer
  attributes :account_id, :post_id, :like

  belongs_to :account
  belongs_to :post
end
