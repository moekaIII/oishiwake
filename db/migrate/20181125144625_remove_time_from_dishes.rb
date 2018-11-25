class RemoveTimeFromDishes < ActiveRecord::Migration[5.2]
  def change
    remove_column :dishes, :time, :text
  end
end
