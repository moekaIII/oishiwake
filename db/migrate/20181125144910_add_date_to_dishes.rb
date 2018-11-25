class AddDateToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :date, :date
  end
end
