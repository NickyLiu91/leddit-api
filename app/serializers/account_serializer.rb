class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :password

  has_many :posts
  has_many :comments
  has_many :replies
end
