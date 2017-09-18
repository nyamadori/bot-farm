require 'rails_helper'

RSpec.describe Hook, type: :model do
  describe '#hook_kind' do
    let(:hook) { create(:hook) }
    subject(:hook_kind) { hook.__send__(:hook_kind) }

    it { is_expected.to be_kind_of(HookKind::Message) }
    it { expect(hook_kind.pattern).to eq(hook.params['pattern']) }
  end
end
