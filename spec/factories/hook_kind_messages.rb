FactoryGirl.define do
  factory :hook_kind_message, class: 'HookKind::Message' do
    hook
    pattern 'echo (.+)'
  end
end
