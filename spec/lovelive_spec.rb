require 'spec_helper'

module Pebbles
  describe LoveLive do
    it 'should have a version number' do
      Pebbles::LoveLive::VERSION.should_not be_nil
    end

    context 'exists member' do
      before { @member = Pebbles::LoveLive.eli }
      subject { @member }
      it { should_not be_nil }
    end

    context 'not exists member' do
      before { @member = Pebbles::LoveLive.alpaca }
      subject { @member }
      it { should be_nil }
    end
  end
end
