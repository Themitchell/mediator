require 'spec_helper'

describe PictureImporter do
  subject { PictureImporter }

  it 'creates a new picture' do
    expect { subject.start }.to change(Picture, :count).by(1)
  end

  it 'sets the name to be the filename' do
    subject.start
    Picture.last.name.should eql 'test.png'
  end

  it 'sets the file' do
    subject.start
    Picture.last.file.should_not be_nil
  end
end
