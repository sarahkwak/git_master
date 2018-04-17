module Test
  State = {}
  def state=(new_state)
    State[object_id] = new_state
  end

  def state
    p State[object_id]
  end
end

class Book
  include Test
end

book1 = Book.new
book2 = Book.new
book1.state = "whatever"
book2.state = "cat"
book1.state
book2.state
