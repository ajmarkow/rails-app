class AddSnippetIdToTags < ActiveRecord::Migration[6.0]
  def change
     add_column :tags , :snippet_id, :bigint
     add_reference :tags, :snippet_id, index: true
  end
end
