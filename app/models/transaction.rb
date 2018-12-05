class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :sender, foreign_key: 'account_id', class_name: 'Account'
end

# belongs_to :receiver, class_name: 'Account', foreign_key: 'receiver_id'
# belongs_to :sender, class_name: 'Account', foreign_key: 'sender_id'
