module Pebbles
  module LoveLive
    class Member
      def initialize(name, hash)
        hash.each do |k, v|
          self.instance_variable_set("@#{k}", v)
          self.class.send(:define_method, k, proc { self.instance_variable_get("@#{k}") })
        end
        aa_text = File.open(File.join(CONFIG_PATH, "aa_#{name}.txt")).read
        self.instance_variable_set('@aa', aa_text)
        self.class.send(:define_method, 'aa', proc { self.instance_variable_get("@aa") })
      end

      def name
        last_name + first_name
      end

      def birth
        "#{birth_month}月#{birth_day}日"
      end

      def three_size
        "B#{bust}・W#{waste}・H#{hip}"
      end

      def to_s
        <<-EOS.gsub(/^\s+/, '')
          名前: #{name}
          CV: #{cv}
          年齢: #{age}歳
          誕生日: #{birth}(#{zodiac_sign})
          血液型: #{blood_type}型
          身長: #{height}cm
          スリーサイズ: #{three_size}
          好きな食べ物: #{favorite_food}
          嫌いな食べ物: #{dislike_food}
          プロフィール: #{profile}
        EOS
      end
    end
  end
end
