class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.belongs_to :manual
      t.belongs_to :tag
      t.timestamps
    end
  end
end
