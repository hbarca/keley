class CreateTaggablesTags < ActiveRecord::Migration
  def change
    create_table :taggables_tags do |t|
      t.references :taggable, :polymorphic => true
      t.references :tag

      t.timestamps
    end
    add_index :taggables_tags, [:taggable_id, :taggable_type]
    add_index :taggables_tags, :tag_id
  end
end
