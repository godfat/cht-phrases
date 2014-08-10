#!/usr/bin/env ruby
# encoding: utf-8

require './lib/cht-phrases'

paths = if ARGV.empty? then Dir['share/*.txt'] else ARGV end

def cleanup file
  result = ChtPhrases.sort_phrases(File.open(file).each_line.map{ |l|
    ll = l.gsub(/,|\t|ˉ|　/, ' ').squeeze(' ').strip
    ll unless ll.empty?
  }.compact).join("\n")

  File.open(file, 'w'){ |f|
    f.puts(result)
  }
end

cleanup(paths.shift) until paths.empty?
