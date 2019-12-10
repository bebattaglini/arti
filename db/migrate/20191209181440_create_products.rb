class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.boolean :available
      t.string :location
      t.string :description
      t.string :sku
      t.references :category, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
