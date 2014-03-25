# Pebbles::LoveLive

[![Build Status](https://travis-ci.org/STAR-ZERO/pebbles-lovelive.svg?branch=master)](https://travis-ci.org/STAR-ZERO/pebbles-lovelive)
[![Coverage Status](https://coveralls.io/repos/STAR-ZERO/pebbles-lovelive/badge.png?branch=master)](https://coveralls.io/r/STAR-ZERO/pebbles-lovelive?branch=master)
[![Code Climate](https://codeclimate.com/github/STAR-ZERO/pebbles-lovelive.png)](https://codeclimate.com/github/STAR-ZERO/pebbles-lovelive)
[![Dependency Status](https://gemnasium.com/STAR-ZERO/pebbles-lovelive.svg)](https://gemnasium.com/STAR-ZERO/pebbles-lovelive)

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

```
$ lovelive eli --bigaa
名前: 絢瀬絵里
CV: 南條愛乃
年齢: 17歳
誕生日: 10月21日(天秤座)
血液型: B型
...
...

                                             .-+o/+o+-`.
                                           .-.  ````   `-:-`
                              :...`-`     :. `````...``   .+/
                            `:      --   :.```.....```-+- ` :o`
                          `-.        -/`.: `.:-.        /-`` .+`
                        .`       .--` .os .--   ``-`    ..``` -+`
                      `:..:-  `````.:/`-d//``---:.`     :s-``` /+`
                     `:-`.:-`......:--+.:y-.``          `dm+``` :+.
                `-:-.`..:/::+--.--://---`....oy+-.`..``  .mho```  -:-
             .`-`` ````````++````````.-.-:-.`.-:--.------ dyo+````` .-.`
          --``  ``````.`..``.`...`..``````.:-.` `:oo/+::-shydh+`````` `-:
       ...    `````````````````````````````` `--` `-/--.    --/-..-..`  ./-
     .-`     `.``````-``````````````````````   `-.` ..```         ```..`  -/
    :. `    ```` `` :h `.  ``````````````````    ..``..            `::..`  -/
  `- `.`` ````````.:sm ``` ```````````````````.```.:``--         :yo-` :y.  +:
  : -.``````:.```:-` ++ .```````-.``..`````````..``.o.`.`      `yh-```` my: os.
 / -/``````.h.`.:`    :-..``````.+-``/s/.```...`..``-h``o-     ym: `.`` o+/./s.
`- /-`````.d+`./       .-.+-``````/o. .+do.```.....``hy`+d.   /Mso```.` s+-/+o.
s :y `````oM:`/         `-:o-..````-o:` .sd/``.....``.M+ oh  -y+hs.``.` d/-+/-
h`do ````.my:.: .--`      `:/.-:-.---+o:.`-ho```....``Ny`o//.y/ .h-```` y:`-.
s`d/ ````:N..y  `...:.      .- `./+:-`.:-::-oo```...``yy.o+.--`  s-``` /o.
.-s+. ```++  y                      `:://-`-/yo``..```dy-o/      :.`` /s:
 /+-: ```o/   -/yhhh+-            +shssyMNd+` +.`.```-d+/s:      :`  :s:
  ..-: ``+/ /mms``oMMMy`         :myh  `NmNNmo`:````.ds/ys.      + .oo-
     ./. --/M/-d-.sMmMh          ` -MysNMhhd+Mo-```.-/ysy:       :+s:`
       :-``.y `MdomMsNy            .dy:-..hs`- / `-::--m/`      `..`
        .o++`  +h-.-oh:             `oy//y+`  .-.--..-`s.
        -.h/`    ---:                  ```   o+o-..-- s/
       `-.y-   ```         `          `````` +./.-.-`oo.
       - :sh` ``````                  ``.``` :`:.-.:s/`
       `-+-+/  ````      -:`  ./`      ```   :`hso:`+:
        -+./+o-           .   `           ./sh-Nd- . o-
           / .+hs-.                  `.:++o:.`-oy+ `s.o`
           +` `Nds/-:+/..--:-------hss+-.`      `:` yy/`
            :` yso-    -+dMM:///:-hMMho:-`       `.:o:`
             :/-o-.   /sdyso-oo/::ymmyyhoo/      `:+:
              `-:-   .sshy+ssos+ssoNhsmhhyso-     ``
                     ooyyNoooymy+osmyyydysoss/.
                    `sssds/oss:ds+/ymysmmyssoos+-
                    oohhhhs/hNmMy:ddhsod+:shdmhsy/
                   `ssdmydmNNmNdmhddhsys..oyyhyyy/
                   osdmhyyym+oMhyyyyysss:sdddhydo.
                   oshhyyyyhhhdhyyyyysods:/oshmo.
                  /sydhyyyyhhhmhyyyyydyym-:o/ys-
                  oyhdhyyyyd++Mdyyyyyyyhmy`/ho.
                 :ooNssyyyyhhhNMhyyyyssoyNy -o.
                 oo/MmhyyyyyhdNMmyyyyyhdsshys/`
                `-.h:ohdmmdNhhoomNddmNyoy/+::/
                .`o+.:`--:y/+y:+s/hs/++`-o:ss++.
                 o::hs/d/-+ .h .o -h.+so+Mh-/./s.
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
