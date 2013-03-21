class PictureImporter

  # def self.start(path, *args)
  #   # new(args).start
  # end

  def initialize(path, *args)
    @files = Dir.glob(File.join(path, '*'))
  end

  def start
    @files.each do |image|
      create_from_file image
    end
  end

  private
  def create_from_file(path)
    return unless File.exists? path
    file = File.open(path)
    attributes = {  file: file,
                    name: File.basename(path) }

    if ['.jpg', '.jpeg'].include? File.extname(path)
      file_data = EXIFR::JPEG.new(file)
      attributes.merge!({ lat:  file_data.gps_lat,
                          lng: file_data.gps_lng,
                          file_creation_date: file_data.date_time })
    end
    Picture.create!(attributes)
  end
end
