class PictureImporter

  def self.start(*args)
    new(args).start
  end

  def initialize(*args)
    dir_path = File.join(Rails.root, 'spec', 'fixtures', 'images')
    @files = Dir.glob(File.join(dir_path, '*'))
  end

  def start
    @files.each do |image|
      create_from_file image
    end
  end

  private
  def create_from_file(path)
    file = File.open(path) if File.exists? path
    Picture.create!( file: file, name: File.basename(path) )
  end
end
