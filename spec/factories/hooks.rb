FactoryGirl.define do
  factory :hook do
    bot

    description { FFaker::Lorem.sentence }
    kind :message
    params do
      {
        pattern: 'echo (.+)'
      }
    end
  end
end
