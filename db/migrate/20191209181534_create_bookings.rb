class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.string :description
      t.string :location
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
