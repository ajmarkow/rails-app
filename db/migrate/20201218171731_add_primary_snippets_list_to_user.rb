class AddPrimarySnippetsListToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :primary_snippets_list_id, :bigint 
  end
end
