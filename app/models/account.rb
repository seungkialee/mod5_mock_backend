class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions

  before_create :update_routing
  def update_routing
    self.routing = rand(9)
  end
end
