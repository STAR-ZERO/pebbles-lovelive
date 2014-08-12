module Pebbles
  module LoveLive
    class Story

      attr_reader :story

      def initialize
        @story = {}
        read_story_yaml(1)
        read_story_yaml(2)
      end

      def read_story_yaml(season_number)
        yaml = YAML.load_file(File.join(CONFIG_PATH, "story_season_#{season_number}.yml"))
        stories = []
        yaml.each do |story|
          stories << StoryItem.new(story)
        end

        @story["season#{season_number}".to_sym] = stories
      end

      def print(desc)
        out = "1期\n------------------------------------\n"
        @story[:season1].each do |story_item|
          out << "第#{story_item.number}話「#{story_item.title}」\n"
          out << "  #{story_item.description}\n\n" if desc
        end
        out << "\n"

        out << "2期\n------------------------------------\n"
        @story[:season2].each do |story_item|
          out << "第#{story_item.number}話「#{story_item.title}」\n"
          out << "  #{story_item.description}\n\n" if desc
        end

        puts out
      end

      class StoryItem
        def initialize(hash)
          hash.each do |k, v|
            self.instance_variable_set("@#{k}", v)
            self.class.send(:define_method, k, proc { self.instance_variable_get("@#{k}") })
          end
        end
      end
    end
  end
end

