class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.float :debits
      t.float :credits
      t.integer :number_of_transactions
      t.float :total_money

      t.timestamps null: false
    end
  end
end
