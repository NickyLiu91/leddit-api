class CommentvoteSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :comment_id, :like

  belongs_to :account
  belongs_to :comment
end
