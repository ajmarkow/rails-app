class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :taggable_type, :string
    add_column :tags, :taggable_id, :bigint
  end
end
