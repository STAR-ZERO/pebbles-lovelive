module Pebbles
  module LoveLive

    require 'pebbles/lovelive'
    require 'thor'

    class CLI < Thor

      desc '<MEMBER> [option]', "show the profile of μ's members"
      long_desc <<-LONGDESC
        μ's member list:
          \x5 * honoka
          \x5 * eli
          \x5 * kotori
          \x5 * umi
          \x5 * rin
          \x5 * maki
          \x5 * nozomi
          \x5 * hanayo
          \x5 * nico

        Example:
          \x5 $ lovelive eli
          \x5 $ lovelive eli --aa
      LONGDESC
      option :aa, type: :boolean, :desc => "show ASCII-Art"
      def member(name)
        member = LoveLive.send(name)
        if member
          puts member
          puts member.aa if options[:aa]
        else
          puts "Error: unknown member"
          puts ""
          invoke :help, ['member']
        end
      end

      desc 'help [member]', 'show help'
      def help(command = nil, subcommand = false)
        super(command, subcommand)
      end

      def method_missing(method, *args)
        invoke :member, [method], args
      end
    end
  end
end
