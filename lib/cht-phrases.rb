# encoding: utf-8

module ChtPhrases
  module_function
  def sort_phrases phrases
    phrases.reject{ |l| l.strip.empty? }.sort{ |lhs, rhs|
      p0, p1 = lhs[/^\S+/], rhs[/^\S+/]
      if p0.size == 1 && p1.size == 1
        lhs <=> rhs
      elsif p0.size == 1
        -1
      elsif p1.size == 1
        1
      else
        lhs <=> rhs
      end
    }.uniq{ |p| p[/^\D+/] }
  end
end
