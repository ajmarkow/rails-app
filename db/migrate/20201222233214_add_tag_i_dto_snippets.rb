class AddTagIDtoSnippets < ActiveRecord::Migration[6.0]
  def change
    add_column :snippets, :tag_id, :integer
  end
end
