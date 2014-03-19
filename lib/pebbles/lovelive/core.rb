module Pebbles
  module LoveLive
    require 'singleton'
    require 'yaml'

    class Core
      include Singleton

      def initialize
        yaml = YAML.load_file(File.join(CONFIG_PATH, 'members.yml'))
        @@members = {}
        yaml.each do |k, v|
          @@members[k] = Member.new(k, v)
        end
      end

      def method_missing(method, *args)
        @@members[method]
      end
    end
  end
end
