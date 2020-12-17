class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.text :trigger
      t.text :replacement
      t.boolean :is_form
      t.boolean :is_public
      t.text :tags
      t.references :taggable, polymorphic:true, index:true
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
