require 'spec_helper'

module Pebbles
  describe LoveLive do
    it 'should have a version number' do
      expect(Pebbles::LoveLive::VERSION).not_to be_nil
    end

    describe '#members' do
      before { @members = Pebbles::LoveLive.members }
      subject { @members }
      it { should_not be_nil }
      it { should be_kind_of(Hash) }
    end

    describe '#member' do
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

    describe '#story' do
      before { @story = Pebbles::LoveLive.story }
      subject { @story }
      it { should_not be_nil }
    end
  end
end
