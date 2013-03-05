require 'spec_helper'

feature "Video", %q{As a user
        I would like o be able to view videos
        in order to see whats happening with my videos} do

  background do
    visit '/videos'
  end

  scenario 'viewing a list of videos' do
    page.should have_css 'h1', text: 'Videos'
  end
end
