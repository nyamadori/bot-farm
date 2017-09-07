FactoryGirl.define do
  factory :hook do
    bot

    kind :message
    params do
      {
        pattern: 'echo (.+)'
      }
    end
  end
end
