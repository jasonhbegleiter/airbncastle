class AddPhotoToCastles < ActiveRecord::Migration[5.2]
  def change
    add_column :castles, :photo, :string
  end
end
