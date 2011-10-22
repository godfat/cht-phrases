
puts($stdin.read.lines.map{ |l|
  l.gsub(/\-?\d\.\d/, '').gsub(/,|\t/, ' ').squeeze(' ')
}.join)
