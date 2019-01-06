class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions

  # before_create :update_routing
# def update_routing
#   self.routing = rand(9)
# end

end

# has_many :sent_transactions, :class_name => 'Transaction', :foreign_key => 'sent_transaction_id'
# has_many :received_transactions, :class_name => 'Transaction', :foreign_key => 'received_transaction_id'
