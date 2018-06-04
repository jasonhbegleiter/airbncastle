class CreateCastleAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :castle_amenities do |t|
      t.references :castle, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
