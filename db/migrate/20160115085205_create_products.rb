class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :weight
      t.float :price
      t.integer :rank

      t.timestamps
    end
  end
end
