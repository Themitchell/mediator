# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photoalbum do
    sequence(:name)   { |n| "My photo album #{n}" }
  end
end
