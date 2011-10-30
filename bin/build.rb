#!/usr/bin/env ruby
# encoding: utf-8

require './lib/cht-phrases'

lines = ChtPhrases.sort_phrases(ARGV.map{|p|File.read(p).split("\n")}.flatten)

File.open('BPMFMappings.txt', 'w'){ |file|
  file.puts(lines.join("\n"))
}

File.open('1-4w.occ', 'w'){ |file|
  file.puts(lines.map{ |line|
    "#{line} 0"
  }.join("\n"))
}
