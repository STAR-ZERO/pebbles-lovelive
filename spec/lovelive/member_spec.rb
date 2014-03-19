require 'spec_helper'

module Pebbles
  describe LoveLive::Member do

    before do
      @members = {}
      yaml = YAML.load_file(File.expand_path('../../../config/members.yml', __FILE__))
      yaml.each do |k, v|
        @members[k] = LoveLive::Member.new(k, v)
      end
    end

    it 'members is 9' do
      expect(@members.size).to eq(9)
    end

    describe 'eli' do
      before { @eli = @members[:eli] }
      subject { @eli }

      its(:name) { should == @eli.last_name + @eli.first_name }
      its(:birth) { should == "#{@eli.birth_month}月#{@eli.birth_day}日" }
      its(:three_size) { should == "B#{@eli.bust}・W#{@eli.waste}・H#{@eli.hip}" }
    end
  end
end
