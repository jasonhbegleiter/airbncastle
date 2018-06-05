class DropCastlePhotosTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :castle_photos
  end
end
