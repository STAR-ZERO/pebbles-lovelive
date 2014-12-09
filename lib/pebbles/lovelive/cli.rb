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
          \x5 $ lovelive eli --bigaa
      LONGDESC
      option :aa, type: :boolean, :desc => "show ASCII-Art"
      option :bigaa, type: :boolean, :desc => "show Big ASCII-Art"
      def member(name)
        member = LoveLive.send(name)
        if member
          member.print(options[:aa], options[:bigaa])
        else
          puts "Error: unknown member"
          puts ""
          invoke :help, ['member']
        end
      end

      desc 'members', 'show member list'
      def members
        LoveLive.members.each do |key, member|
          puts member.name
        end
      end

      desc 'story [option]', 'show story'
      option :desc, type: :boolean, :desc => "show description"
      def story
        story = LoveLive.story
        story.print(options[:desc])
      end

      desc 'help [COMMAND]', 'show help. COMMAND is "member" or "story".'
      def help(command = nil, subcommand = false)
        super(command, subcommand)
      end

      def method_missing(method, *args)
        invoke :member, [method], args
      end
    end
  end
end
