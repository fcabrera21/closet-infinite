class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.float :price
      t.references :status, index: true, foreign_key: true
      t.date :rent_date
      t.date :expected_return_date
      t.date :actual_return_date

      t.timestamps null: false
    end
  end
end
