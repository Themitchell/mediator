# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore.pluralize}"
  end

  def filename
    model.id ? "#{model.id}-#{original_filename}" : original_filename
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  version :thumb do
    process resize_to_fill: [80, 80]
  end

end
