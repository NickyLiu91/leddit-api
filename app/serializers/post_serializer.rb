class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :account, :deleted, :edited, :created_at, :updated_at, :postvotes

  has_many :comments
  belongs_to :account
end
