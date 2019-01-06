class AddDrop1 < ActiveRecord::Migration[5.2]
  def up
    add_column :transactions, :receiving_id, :integer
    add_column :transactions, :transaction_type, :string
  end
end
