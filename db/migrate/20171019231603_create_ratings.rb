class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :rater, references: :user
      t.integer :ratee, references: :user
      t.float :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
