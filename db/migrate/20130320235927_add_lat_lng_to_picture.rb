class AddLatLngToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :lat, :float
    add_column :pictures, :lng, :float
  end
end
