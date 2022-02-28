class CommentvoteSerializer < ActiveModel::Serializer
  attributes :account_id, :comment_id, :like

  belongs_to :account
  belongs_to :comment
end
