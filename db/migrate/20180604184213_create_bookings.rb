class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.boolean :accepted
      t.datetime :start_date
      t.integer :no_of_nights
      t.boolean :completed
      t.integer :no_confirmed_guests
      t.references :castle, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
