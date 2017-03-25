# Main class
class Trap
  def initialize
    @eps = 1e-4
  end

  def calc(a, b, f)
    s = s1 = 0.0
    n = 1.0
    loop do
      n *= 2
      h = (b - a) / n
      s = s1
      s1 = (f.call(a) + f.call(b)) / 2
      (1..n - 1).each { |i| s1 += f.call(a + i * h) }
      s1 *= h
      break if (s1 - s).abs <= @eps
    end
    s1
  end

  attr_reader :eps
end
