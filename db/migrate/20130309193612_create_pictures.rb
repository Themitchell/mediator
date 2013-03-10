class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :file
      t.string :name
      t.string :permalink

      t.timestamps
    end
  end
end
