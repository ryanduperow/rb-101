# Given a string of words separated by spaces, write a method that takes this string
# of words and returns a string in which the first and last letters of every word are 
# swapped.

def swap(words)
  result = words.split.map do |word|
    word.reverse
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is')