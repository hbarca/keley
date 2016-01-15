class AddEnabledToProduct < ActiveRecord::Migration
  def change
    add_column :products, :enabled, :boolean, :default => true
    add_column :products, :carrousel, :boolean

    add_index :products, :enabled
    add_index :products, :carrousel

  end
end
