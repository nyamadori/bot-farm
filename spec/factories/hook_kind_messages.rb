FactoryGirl.define do
  factory :hook_kind_message, class: 'HookKind::Message' do
    pattern 'echo (.+)'
  end
end
