class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
