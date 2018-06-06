class AddPhotoToAmenities < ActiveRecord::Migration[5.2]
  def change
    add_column :amenities, :photo, :string
  end
end
