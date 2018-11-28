class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :accounts
  has_many :transactions, through: :accounts
end
