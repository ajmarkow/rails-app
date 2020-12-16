class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.text :slug
      t.boolean :is_public

      t.timestamps
    end
  end
end
