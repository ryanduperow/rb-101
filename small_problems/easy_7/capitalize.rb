# Write a method that takes a single String argument and returns a new string 
# that contains the original value of the argument with the first character of 
# every word capitalized and all other letters lowercase. You may assume that 
# words are any sequence of non-blank characters.

def word_cap(words)
  capitalized = []

  string.split.map do |word|
    capitalized << word.capitalize
  end

  capitalized.join(' ')
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')
