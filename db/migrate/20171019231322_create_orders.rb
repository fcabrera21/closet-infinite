class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :contributor, references: :user
      t.references :shopper, references: :user

      t.timestamps null: false
    end
  end
end
