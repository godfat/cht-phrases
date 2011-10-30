#!/usr/bin/env ruby
# encoding: utf-8

require './lib/cht-phrases'

paths = Dir['share/*.txt']

lines = ChtPhrases.sort_phrases(
          paths.map{ |p| File.read(p).split("\n") }.flatten)

File.open('build/BPMFMappings.txt', 'w'){ |file|
  file.puts(lines.join("\n"))
}

File.open('build/1-4w.occ', 'w'){ |file|
  file.puts(lines.map{ |line|
    "#{line[/\p{han}+/]} 0"
  }.join("\n"))
}
