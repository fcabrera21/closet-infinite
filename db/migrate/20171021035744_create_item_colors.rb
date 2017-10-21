class CreateItemColors < ActiveRecord::Migration
  def change
    create_table :item_colors do |t|
      t.references :item, index: true, foreign_key: true
      t.references :color, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
