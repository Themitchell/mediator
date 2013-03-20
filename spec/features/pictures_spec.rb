require 'spec_helper'

feature "Picture", %q{As a user
        I would like o be able to view pictures
        in order to see whats happening with my pictures} do

  scenario 'viewing a list of pictures' do
    picture = create :picture
    visit "/photoalbums/#{picture.photoalbum.to_param}/pictures"

    page.should have_css 'h1', text: 'Pictures'
    within 'table' do
      page.should have_image    picture.file.url
      page.should have_content  picture.name
    end
  end
end
