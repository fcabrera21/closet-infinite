class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :size, index: true, foreign_key: true
      t.references :condition, index: true, foreign_key: true
      t.string :brand
      t.string :image
      t.text :note
      t.float :renting_price
      t.boolean :purchase
      t.float :selling_price
      t.float :avg_rating
      t.boolean :active

      t.timestamps null: false
    end
  end
end
