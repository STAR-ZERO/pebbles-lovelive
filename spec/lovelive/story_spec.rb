require 'spec_helper'

module Pebbles
  describe LoveLive::Story do

    before do
      @story = LoveLive::Story.new
    end

    it 'story is 2 season' do
      expect(@story.story.size).to eq(2)
    end

    describe 'season 1' do
      it '13 stories' do
        expect(@story.story[:season1].size).to eq(13)
      end
    end

    describe 'season 2' do
      it '13 stories' do
        expect(@story.story[:season2].size).to eq(13)
      end
    end

    describe '#print' do
      it "show story number and title" do
        output = capture_stdout { @story.print(false) }
        expect(output).to include "第1話「叶え！私たちの夢——」"
      end

      context 'desc argument is false' do
        it 'not show description' do
          output = capture_stdout { @story.print(false) }
          expect(output).not_to include "東京都千代田区にある伝統校「国立音ノ木坂学院」。"
        end
      end

      context 'desc argument is true' do
        it 'show description' do
          output = capture_stdout { @story.print(true) }
          expect(output).to include "東京都千代田区にある伝統校「国立音ノ木坂学院」。"
        end
      end
    end
  end
end
