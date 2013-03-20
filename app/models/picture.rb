class Picture < ActiveRecord::Base

  # Associations
  belongs_to :photoalbum

  # Validations
  validates :file, presence: true
  validates :name, presence: true

  # Permainks
  has_permalink :name, update: true

  # Uploaders
  mount_uploader :file, PictureUploader
end
