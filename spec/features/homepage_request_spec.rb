require 'spec_helper'

feature "Home Page", %q{As a user
        I would like o be able to view a dashboard
        in order to see whats happening with my media} do

  background do
    visit '/'
  end

  scenario 'viewing the dashboard' do
    page.should have_content "Welcome to Mediator"
  end
end
