class Photoalbum < ActiveRecord::Base

  # Associations
  has_many :pictures

  # Validations
  validates :name, presence: true
end
