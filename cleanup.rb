# encoding: utf-8

require './lib/cht-phrases'

def cleanup file
  result = ChtPhrases.sort_phrases(File.open(file).lines.map{ |l|
    ll = l.gsub(/\-?\d\.\d/, '').gsub(/,|\t|ˉ|　/, ' ').squeeze(' ').strip
    ll unless ll.empty?
  }.compact).join("\n")

  File.open(file, 'w'){ |f|
    f.puts(result)
  }
end

cleanup(ARGV.shift) until ARGV.empty?
