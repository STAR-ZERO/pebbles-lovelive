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
      subject(:eli) { @eli }

      it "#name is full name" do
        expect(eli.name).to eq(@eli.last_name + @eli.first_name)
      end

      it "#birth is format of birthday" do
        expect(eli.birth).to eq("#{@eli.birth_month}月#{@eli.birth_day}日")
      end

      it "#three_size is format of three size" do
        expect(eli.three_size).to eq("B#{@eli.bust}・W#{@eli.waste}・H#{@eli.hip}")
      end

      describe "#print" do
        it "show member profile" do
          output = capture_stdout { @eli.print(false, false) }
          expect(output).to include "名前: 絢瀬絵里"
        end

        context "aa flag ture" do
          it "show aa" do
            output = capture_stdout { @eli.print(true, false) }
            expect(output).to include "　　　　　　　　　　　　　, 、　, -‐- 、"
          end
        end

        context "big aa flag ture" do
          it "show big aa" do
            output = capture_stdout { @eli.print(false, true) }
            expect(output).to include "                                             .-+o/+o+-`.                        "
          end
        end
      end
    end
  end
end
