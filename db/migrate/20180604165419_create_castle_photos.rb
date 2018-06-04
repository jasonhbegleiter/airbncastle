class CreateCastlePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :castle_photos do |t|
      t.references :photo, foreign_key: true
      t.references :castle, foreign_key: true

      t.timestamps
    end
  end
end
