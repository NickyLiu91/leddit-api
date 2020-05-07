class AccountSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  has_many :comments
  belongs_to :account
end
