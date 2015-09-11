class Bazuzz

  def run(max)
    max.times.map do |n|
      #n = n + 1
      #if n % 3 == 0 && n % 9 == 0
      #  bazuzz(n)
      #elsif n % 3 == 0
      #  bazuzz(n)
      #elsif n % 9 == 0
      #  baz(n)
      #else
      #  n
      #end
      baz(bazuzz(n + 1))
    end
  end

  def baz(n)
    return n if n.is_a?(String)
    return 'baz' if (n % 9).zero?
    return n
  end

  def bazuzz(n)
    return n if n.is_a?(String)
    return 'bazuzz' if (n % 27).zero?
    return n
  end

  def check_input(n, val)
    return n if n.is_a?(String)
    return val if yield(n)
    return n
  end
end

