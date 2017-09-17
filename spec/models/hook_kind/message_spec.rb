require 'rails_helper'

RSpec.describe HookKind::Message, type: :model do
  let!(:hook) { create(:hook) }

  let(:kind) do
    build(:hook_kind_message, pattern: 'echo (.+)')
  end

  describe '#match' do
    subject! do
      kind.match(event)
    end

    context 'when an event matches for pattern' do
      let(:event) do
        {
          text: 'echo message'
        }
      end

      it { is_expected.to eq(['message']) }
    end

    context 'when an event does not matches for pattern' do
      let(:event) do
        {
          text: 'echo'
        }
      end

      it { is_expected.to eq(nil) }
    end
  end
end
