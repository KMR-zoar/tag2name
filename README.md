# tag2name.rb

MP3 のタグからアーティスト名と曲名を取ってきて `#{アーティスト名}／#{曲名}.mp3` というファイル名にコピーします。

万が一使う場合は、ファイル名として使えない文字があっても判定していないので注意してください。

```
$ bundle install --path vendor/bundle
$ ./tag2name.rb %Path to MP3 fir%
```

わざわざこんなの書く前に CDDB に登録しろって話ですが。

----
[NYSL](http://www.kmonos.net/nysl/) に従って公開します。