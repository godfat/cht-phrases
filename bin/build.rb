#!/usr/bin/env ruby
# encoding: utf-8

require './lib/cht-phrases'

paths = if ARGV.empty? then Dir['share/*.txt'] else ARGV end

lines = ChtPhrases.sort_phrases(
          paths.map{ |p| File.read(p).split("\n") }.flatten)

File.open('build/BPMFMappings.txt', 'w'){ |file|
  file.puts(lines.join("\n"))
}

File.open('build/1-4w.occ', 'w'){ |file|
  file.puts(lines.map{ |line|
    phrase = line[/\p{han}+/]
    "#{phrase}\t#{phrase.size*10}"
  }.join("\n"))
}
