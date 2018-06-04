class CreateCastles < ActiveRecord::Migration[5.2]
  def change
    create_table :castles do |t|
      t.string :name
      t.text :summary
      t.integer :price_per_night
      t.text :address
      t.integer :no_of_guests
      t.integer :no_of_bedrooms
      t.integer :no_of_bathrooms
      t.user :references
      t.city :references

      t.timestamps
    end
  end
end
