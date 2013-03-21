require 'spec_helper'

describe PictureImporter do

  subject { PictureImporter.new(File.join(Rails.root, 'spec', 'fixtures', 'images')) }

  before do
    EXIFR::JPEG.any_instance.stub(:gps_lat).and_return 5
    EXIFR::JPEG.any_instance.stub(:gps_lng).and_return 3
    EXIFR::JPEG.any_instance.stub(:date_time).and_return "Sat Jan 01 00:00:00 +0000 2000"
    subject.start
    @picture = Picture.first
  end

  it 'sets the name to be the filename' do
    @picture.name.should eql 'test.jpg'
  end

  it 'sets the file' do
    @picture.file.should_not be_nil
  end

  it 'sets gps coordinates' do
    @picture.lat.should  eql 5.0
    @picture.lng.should eql 3.0
  end

  it 'sets the file_creation_date' do
    @picture.file_creation_date.should eql Time.parse("Sat, 01 Jan 2000 00:00:00 +00:00")
  end

end
