class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.text :trigger
      t.text :replacement
      t.text :type
      t.boolean :is_public
      t.text :tags
      t.references :taggable, polymorphic:true, index:true
      t.timestamps
    end
  end
end
