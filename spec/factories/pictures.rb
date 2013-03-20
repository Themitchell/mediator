include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :picture do
    file              { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'images', 'test.png'), 'image/png') }
    sequence(:name)   { |n| "My picture #{n}" }
    photoalbum
  end
end
