class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :routing
      t.string :type
      t.integer :balance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
