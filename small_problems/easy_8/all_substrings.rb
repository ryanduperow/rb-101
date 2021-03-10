# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means 
# that all substrings that start at position 0 should come first, then all 
# substrings that start at position 1, and so on. Since multiple substrings will 
# occur at each position, the substrings at a given position should be returned 
# in order from shortest to longest.

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde')