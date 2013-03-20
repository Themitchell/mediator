class AddPhotoalbumToPicture < ActiveRecord::Migration
  def change
    add_reference :pictures, :photoalbum, index: true
  end
end
