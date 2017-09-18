FactoryGirl.define do
  factory :execution_request do
    hook
    arguments do
      ['arg']
    end
  end
end
