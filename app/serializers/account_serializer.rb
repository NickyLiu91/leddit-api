class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :posts, :comments, :postvotes, :commentvotes

  has_many :posts
  has_many :comments
end
