class Song
  attr_reader :title, :title_length

  def initialize(title)
    @title = title
    @title_length = title.length
  end

  private

  def hello(other)
    # title_length <=> Song.new(other).title_length
    # return title if result == 1
    # return other if result == -1
    # return title, other if result == 0
    p 'HELLLO'
  end

end

class VowelFinder
  include Enumerable
  def initialize(string)
    @string = string
  end

  def each
    @string.split(" ").each do |vowel|
      yield vowel
    end
  end
end


# vf = VowelFinder.new("the quick brown fox jumped")
# p vf.inject { |sum, v| sum += v }
# p vf.inject { |sum, v| sum + v }
song = Song.new('hi')
song.__send__(:hello, "hello")
