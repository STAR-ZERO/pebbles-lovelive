# Pebbles::Lovelive

[![Build Status](https://travis-ci.org/STAR-ZERO/pebbles-lovelive.svg?branch=master)](https://travis-ci.org/STAR-ZERO/pebbles-lovelive)
[![Coverage Status](https://coveralls.io/repos/STAR-ZERO/pebbles-lovelive/badge.png)](https://coveralls.io/r/STAR-ZERO/pebbles-lovelive)
[![Code Climate](https://codeclimate.com/github/STAR-ZERO/pebbles-lovelive.png)](https://codeclimate.com/github/STAR-ZERO/pebbles-lovelive)

Show the profile of LoveLive μ's members.

[LoveLive!](http://www.lovelive-anime.jp/) is Japanese Animation.

## Installation

    $ gem install pebbles-lovelive

## Usage

### in Ruby code

```ruby
require 'pebbles/lovelive'

eli = Pebbles::LoveLive.eli
eli.name # => "絢瀬絵里"
```

### in terminal

```
$ lovelive eli
名前: 絢瀬絵里
CV: 南條愛乃
誕生日: 10月21日(天秤座)
血液型: B型
...
...
```

```
$ lovelive eli --aa
名前: 絢瀬絵里
CV: 南條愛乃
誕生日: 10月21日(天秤座)
血液型: B型
...
...

　　　　　　　　　　　　　, 、　, -‐- 、
　　　　　　　　　　　 ／　 ∨ ／ ＼＼
　　　　　　　　　_,∠二 ｰ-v'､-‐ 　 |　{
　　　　　　／ ´　　　　 ￣｀ヽ＼｀ヽj_　＼
　　　　　/　　　／|　　　　 　 ＼ヽ　 ｀ｰ , ヽ
　　　　 ﾊ 　 //　 ヽ　 ヽ　　 　 ヽヽ　／ ﾄ､ }
　 　 　 | l　 ﾊlｰ- 　 ＼　ヽ　　　 | |Vヽ　l　ﾘ
　　　　 ゛ヽ | ,ｨ示. 　 　rテﾐヽ　 / j 　 } /
　　　　 　 i'ヾ弋ソ　　 弋ソﾉ/／V 　 //
　　　　　　ﾘ|　　　　 　 　 　 ﾘ__ノ　　"
　　 　 　 　| ＞ ､_ ｀ ´＿ ／ヽヽ
　　　 　 　 ヾ{　 ／,ﾆ、:＼　　}/
　 　 　 　 　 　 ﾊ: }∧{: :,､:＼
　　　　　　　　/: } :｡l : : {/: :/
　　　 　 　 　 l: /: :｡| : : ヽ;/
　　　　 　 　 /＼:／＼:／ヽ
　　　　 　 　 ヽ土土土土ノ
　　　　　　　 　 |＿|　|＿|
　　　　　　　　　|:::::|　|:::::|
　　　　　　　　　l::::/　|:::/
　　　　　　　　　｀´.　 ｀´
```

## Members and aliases

|    name    |  alias |
|------------|--------|
| 高坂穂乃果 | honoka |
| 絢瀬絵里   | eli    |
| 南ことり   | kotori |
| 園田海未   | umi    |
| 星空凛     | rin    |
| 西木野真姫 | maki   |
| 東條希     | nozomi |
| 小泉花陽   | hanayo |
| 矢澤にこ   | nico   |

## Contributing

1. Fork it ( http://github.com/STAR-ZERO/pebbles-lovelive/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
