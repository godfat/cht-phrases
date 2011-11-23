# cht-phrases

This is a project trying to merge phrases from different sources.
Here's the list of sources at the moment:

1. godfat's custom phrases from Microsoft 新注音 98a
2. godfat's custom phrases from Yahoo KeyKey
3. Any source which the license allows

## Goal

* Categorize phrases
* Core phrases should contain only traditional phrases, excluding
  people names, location names, etc.
* People names and location names should be separated

## Ultimate Goal

* Serves as phrases modules into [小麥注音輸入法][]

[小麥注音輸入法]: https://github.com/mjhsieh/McBopomofo

## How to use

Run `./bin/build.rb` and you would get:

* [build/phrase.occ][]
* [build/BPMFMappings.txt][]

Append or replace [corresponded files][] in 小麥注音輸入法

[build/phrase.occ]: https://github.com/godfat/cht-phrases/raw/master/build/phrase.occ
[build/BPMFMappings.txt]: https://github.com/godfat/cht-phrases/raw/master/build/BPMFMappings.txt
[corresponded files]: https://github.com/mjhsieh/McBopomofo/tree/master/Source/Data

## License

This work is licensed under a [Creative Commons Attribution 3.0 Taiwan License][cc].

[cc]: http://creativecommons.org/licenses/by/3.0/tw/
