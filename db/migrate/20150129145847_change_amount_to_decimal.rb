class ChangeAmountToDecimal < ActiveRecord::Migration
  def change
    add_column :transactions, :spent_on, :date
    change_column :transactions, :credits, :decimal, :precision=> 10,  :scale=> 2
    change_column :transactions, :debits, :decimal, :precision=> 10,  :scale=> 2
  end
end
