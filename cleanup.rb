# encoding: utf-8

result = File.open(ARGV[0]).lines.map{ |l|
  l.gsub(/\-?\d\.\d/, '').gsub(/,|\t|ˉ|　/, ' ').squeeze(' ')
}.sort{ |lhs, rhs|
  p0, p1 = lhs[/^\p{han}+/], rhs[/^\p{han}+/]
  if p0.size == 1 && p1.size == 1
    lhs <=> rhs
  elsif p0.size == 1
    -1
  elsif p1.size == 1
    1
  else
    lhs <=> rhs
  end
}.uniq.join

File.open(ARGV[0], 'w'){ |f|
  f.puts(result)
}
