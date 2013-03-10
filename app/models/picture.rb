class Picture < ActiveRecord::Base

  # Validations
  validates :file, presence: true
  validates :name, presence: true

  # Permainks
  has_permalink :name, update: true

  # Uploaders
  mount_uploader :file, PictureUploader
end
