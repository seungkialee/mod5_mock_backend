class User < ApplicationRecord
  has_secure_password
  has_many :accounts
  has_many :transactions, through: :accounts
  validates :username, uniqueness: { case_sensitive: false }
end
