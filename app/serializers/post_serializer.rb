class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :account

  has_many :comments
  belongs_to :account
end
