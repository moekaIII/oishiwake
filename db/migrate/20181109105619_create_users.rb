class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :pass
      t.text :icon
      t.text :about_me
      t.text :image
      t.text :comment

      t.timestamps
    end
  end
end
