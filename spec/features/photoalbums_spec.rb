require 'spec_helper'

feature "Photoalbum", %q{As a user
        I would like o be able to view Photoalbums
        in order to see whats happening with my Photoalbums} do

  scenario 'viewing a list of pictures' do
    photoalbum = create :photoalbum
    picture = create :picture, photoalbum: photoalbum
    visit '/photoalbums'

    page.should have_css 'h1', text: 'Photoalbums'
    within 'table' do
      page.should have_image    photoalbum.pictures.first.file.url
      page.should have_content  photoalbum.name
    end
  end
end
