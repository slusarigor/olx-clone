class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: true
      t.string :description, null: false
      t.integer :user_id, null: false, index: true
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
