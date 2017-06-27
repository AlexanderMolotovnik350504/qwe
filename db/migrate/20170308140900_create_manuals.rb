class CreateManuals < ActiveRecord::Migration[5.0]
  def change
    create_table :manuals do |t|
      t.string :title
      t.string :url
      t.integer :user_id
      t.timestamps
    end
  end
end
