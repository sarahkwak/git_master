module Badness
  def examples
    @examples ||= []
  end

  def add_sin
    examples << sin
  end

  def sin
    "Bydefault i am bad"
  end

  def print_everything
    p "class: #{self.class}, #{self.object_id}, #{self.to_s}"
  end
end
