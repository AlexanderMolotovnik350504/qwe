class AddCategoryIdToManuals < ActiveRecord::Migration[5.0]
  def change
    add_column :manuals, :category_id, :integer
    add_index :manuals, :category_id
  end
end
