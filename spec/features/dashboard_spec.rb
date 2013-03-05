require 'spec_helper'

feature "Dashboard", %q{As a user
        I would like o be able to view a dashboard
        in order to see whats happening with my media} do

  background do
    visit '/'
  end

  scenario 'welcome message' do
    page.should have_content "Welcome to Mediator"
  end
end
