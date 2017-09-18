FactoryGirl.define do
  factory :bot do
    name { FFaker::Book.title }
    description { FFaker::Lorem.sentence }
  end
end
