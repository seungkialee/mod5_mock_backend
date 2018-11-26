class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :receiving_route
      t.string :sending_route
      t.string :detail
      t.integer :amount
      t.boolean :approve
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
