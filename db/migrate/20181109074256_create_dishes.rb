class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :time
      t.integer :tip
      t.text :comment
            
      t.timestamps
    end
  end
end
