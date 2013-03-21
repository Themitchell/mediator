require 'spec_helper'

describe PictureImporter do
  subject { PictureImporter.new(File.join(Rails.root, 'spec', 'fixtures', 'images')) }

  before do
    EXIFR::JPEG.any_instance.stub(:gps_lat).and_return 5
    EXIFR::JPEG.any_instance.stub(:gps_lng).and_return 3
  end

  it 'sets the name to be the filename' do
    subject.start
    Picture.first.name.should eql 'test.jpg'
  end

  it 'sets the file' do
    subject.start
    Picture.first.file.should_not be_nil
  end

  it 'sets gps coordinates' do
    subject.start
    Picture.first.lat.should  eql 5.0
    Picture.first.lng.should eql 3.0
  end

end
