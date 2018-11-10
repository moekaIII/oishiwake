class ChangeDatetypeTimeOfDish < ActiveRecord::Migration[5.2]
  def change
    change_column :dishes, :time, :text
  end
end
