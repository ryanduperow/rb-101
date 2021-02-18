[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]

#Additional Example:

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]