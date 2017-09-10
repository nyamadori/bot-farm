FactoryGirl.define do
  factory :script do
    content <<-SCRIPT
// message.reply(arguments[0])
    SCRIPT
  end
end
