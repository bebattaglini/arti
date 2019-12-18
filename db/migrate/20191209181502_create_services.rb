class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.integer :daily_cost
      t.boolean :available
      t.string :location
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end


