class CommentVoteSerializer < ActiveModel::Serializer
  attributes :account, :comment, :like

  belongs_to :account
  belongs_to :comment
end
