class AddFileCreationDateToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :file_creation_date, :datetime
  end
end
