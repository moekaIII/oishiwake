class AddTransactionPlaceToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :transaction_place, :text
  end
end
