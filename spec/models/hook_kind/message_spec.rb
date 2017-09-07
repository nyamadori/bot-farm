require 'rails_helper'

RSpec.describe HookKind::Message, type: :model do
  let(:kind) do
    build(:hook_kind_message, pattern: 'echo (.+)')
  end

  describe 'triggered_by?' do
    subject do
      kind.triggered_by?(event)
    end

    context 'when an event matches for pattern' do
      let(:event) do
        {
          text: 'echo message'
        }
      end

      it { is_expected.to eq(true) }
    end

    context 'when an event does not matches for pattern' do
      let(:event) do
        {
          text: 'echo'
        }
      end

      it { is_expected.to eq(false) }
    end
  end
end
