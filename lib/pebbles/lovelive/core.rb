module Pebbles
  module LoveLive
    require 'singleton'
    require 'yaml'

    class Core
      include Singleton

      def initialize
        initialize_member
        initialize_story
      end

      def members
        @@members
      end

      def story
        @@story
      end

      def method_missing(method, *args)
        @@members[method]
      end

      private
        def initialize_member
          yaml = YAML.load_file(File.join(CONFIG_PATH, 'members.yml'))
          @@members = {}
          yaml.each do |k, v|
            @@members[k] = Member.new(k, v)
          end
        end

        def initialize_story
          @@story = Story.new
        end
    end
  end
end
