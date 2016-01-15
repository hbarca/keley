class AddEnabledToProduct < ActiveRecord::Migration
  def change
    add_column :products, :enabled, :boolean
    add_column :products, :carrousel, :boolean

    add_index :products, :enabled
    add_index :products, :carrousel

  end
end
