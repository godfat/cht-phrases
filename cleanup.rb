# encoding: utf-8

def cleanup file
  result = File.open(file).lines.map{ |l|
    ll = l.gsub(/\-?\d\.\d/, '').gsub(/,|\t|ˉ|　/, ' ').squeeze(' ').strip
    "#{ll}\n" unless ll.empty?
  }.compact.sort{ |lhs, rhs|
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

  File.open(file, 'w'){ |f|
    f.puts(result)
  }
end

cleanup(ARGV.shift) until ARGV.empty?
