require "pebbles/lovelive/version"
require "pebbles/lovelive/config"
require "pebbles/lovelive/core"
require "pebbles/lovelive/member"

module Pebbles
  module LoveLive
    def self.method_missing(method, *args)
      LoveLive::Core.instance.send(method, args)
    end
  end
end
