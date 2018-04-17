file = File.open("whatever.txt", "w")
class StupidError < StandardError; end
# p file.methods
def write_song
  while true #data = socket.read(512)
    begin
      data.write(file)
    rescue
      $stderr.print $!
      p "===================="
      raise
    end
  end
end

def test_error
  begin
    sdfd?
  rescue NoMethodError
    raise
    $stderr.print ("ERROR")
    p "==================="
  end
end

def whatever_catch
  i = 1
  while i < 10
    i += 1
    throw :whatever_throw if i == 8
    catch :whatever_throw do
      puts "++++++============="
      puts i
    end
  end
end

def open_sessame
  lines = File.open("whatever.txt").read
  lines.each_line do |line|
    puts line
    p '========'
  end
end

# p open_sessame
$LOAD_PATH << '.'
File.open('whatever.txt').each(sep="\r") do |line|
  p "==========="
  p line
end
# load("whatever.rb")
# def prompt_and_get(prompt)
#   puts prompt
#   res = readline.chomp
#   throw :quit_requested if res == "!"
#   res
# end

# catch :quit_requested do
#   name = prompt_and_get("Name: ")
#   age = prompt_and_get("Age: ")
#   sex = prompt_and_get("Sex: ")
# end

# prompt_and_get('hi')

def redo_what(n)
  while n < 11
    p n += 1
    redo if n == 9
    p "REAL: #{n}"
  end
  p 'DONE'
end

def break_if(i)
  while true
    i+= 1
    p i
    break if i == 10
  end
end
$LOAD_PATH << '.'
require "badness"
class Human
  include Badness

  attr_reader :text
  def initialize(text)
    @text = text
  end
end

class Cat
  include Badness

  attr_reader :text
  def initialize(text)
    @text = text
  end
end

me = Human.new("i am not siner")
bri = Cat.new("wtf")
# p me.add_sin
# me.sin
# bri.sin


class SarahCalculator
  # include Enumerable
  # include Comparable
  RANGE = (1..5)
  ARRAY = [1,4,5]

  def bigger(a, b)
    a <=> b
  end

  def sort(a, b)
    [a, b].sort
  end

  def <=>(other)
    ARRAY.max <=> other.max
  end

  # def include?(a, range)
  #   true if range.include? a
  # end
end

sa = SarahCalculator.new
# p sa.bigger(5,2)
# p sa.sort(6,2)
# p SarahCalculator::ARRAY.max
# p sa <=> [4,3,2]
# p SarahCalculator::ARRAY.inject { |sum, e| sum += e }

class Calculator
  def addition(a,b)
    return a + b
  end
end

# add = Calculator.new.method(:addition)
# add.to_proc
# p "=========="
# p add.call(3,4)
def location_in_hierarchy(object, method)
  p object.class.ancestors
  object.class.superclass.ancestors.each { |o| o.respond_to?(method.to_sym) }.first
end

# p location_in_hierarchy(1, :between?)

class Practice
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

def location_in_hierarchy(object, method)
  object = object.class
  sup_arr = [object]
  until object.superclass.nil?
    sup_arr.push object.superclass
    object = object.superclass
  end
  sup_arr.reverse.each do |sa|
    if sa.method_defined? method
      return sa
    end
  end
end

p location_in_hierarchy(1, :between?)
p location_in_hierarchy('a string', :to_s)
p location_in_hierarchy(lambda {}, :call)
