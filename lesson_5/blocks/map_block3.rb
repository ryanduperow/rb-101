[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# => [[2, 4], [6, 8]]

# Note: We have to use #map twice to get to the individual numbers, otherwise
# we just double the array, not the individual elements.