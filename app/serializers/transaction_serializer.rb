class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :detail, :approve, :amount, :account_id, :created_at
  belongs_to :account
end
