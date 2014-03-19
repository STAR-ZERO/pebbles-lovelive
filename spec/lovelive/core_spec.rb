require 'spec_helper'

module Pebbles
  describe LoveLive::Core do

    before { @core = LoveLive::Core.instance }

    describe 'method_missing' do
      context 'call member name method' do
        subject { @core.eli }

        it { should_not be_nil }
        it { should be_an_instance_of LoveLive::Member }
      end

      context 'call not member name method' do
        subject { @core.alpaca }

        it { should be_nil }
      end
    end
  end
end
