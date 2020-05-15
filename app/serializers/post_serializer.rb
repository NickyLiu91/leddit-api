class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  has_many :comments
  has_many :replies
  belongs_to :account
end
