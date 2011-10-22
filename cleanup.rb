# encoding: utf-8

puts($stdin.read.lines.map{ |l|
  l.gsub(/\-?\d\.\d/, '').gsub(/,|\t|　/, ' ').squeeze(' ')
}.sort.join)
