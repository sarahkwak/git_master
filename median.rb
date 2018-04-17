def median(array)
  sorted = array.sort
  len = sorted.length
  p sorted[(len - 1) / 2]
  p sorted[len / 2]
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

p median([])
