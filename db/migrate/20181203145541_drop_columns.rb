class DropColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :receiving_route
    remove_column :transactions, :sending_route
    remove_column :accounts, :routing
  end
end
