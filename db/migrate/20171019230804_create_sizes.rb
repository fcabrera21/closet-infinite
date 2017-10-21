class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
