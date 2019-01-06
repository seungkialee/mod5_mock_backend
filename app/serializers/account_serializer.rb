class AccountSerializer < ActiveModel::Serializer
  attributes :account_type, :id, :balance
  belongs_to :user
  has_many :transactions
end
