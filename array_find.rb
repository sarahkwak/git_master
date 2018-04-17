class Array
  def find
    self.each { |a| return a if yield(a) }
  end
end

p [1,2,3,4,5, 9, 10].find { |v| v * v > 30 }


# FIRST COMMIT
# hello hello hello


# SECOND COMMIT
#  hi hi hi


# THIRD COMMIT
# Access Denied: the missing guide to authorization in Rails

# FOURTH COMMIT
# The Doctor Is In: Using checkups to find bugs in production


# INTERUPTIONNNNNNNN

# 2nd INTERRUPTIONTTTT
