class AddCoordinatesToCastles < ActiveRecord::Migration[5.2]
  def change
    add_column :castles, :latitude, :float
    add_column :castles, :longitude, :float
  end
end
