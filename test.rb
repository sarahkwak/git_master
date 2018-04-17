class Setters
  def initialize (one, two)
    one = one
    self.two = two
  end

  def to_s
    puts "one is #{one} two is #{two}"
  end

  attr_accessor :one, :two
end

s = Setters.new(1, 2).freeze
s.one = 888
puts s

def normal_method (arg)
  puts arg
end

p normal_method('hi')
