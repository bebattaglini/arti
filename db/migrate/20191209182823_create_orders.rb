class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.string :delivery_address
      t.string :billing_address
      t.string :status
      t.string :shiping_date
      t.string :product_sku

      t.timestamps
    end
  end
end
