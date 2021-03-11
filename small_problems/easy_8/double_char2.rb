# Write a method that takes a string, and returns a new string in which every 
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and 
# whitespace should not be doubled.

CONSONANTS = "BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstwxyz".chars

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if CONSONANTS.include?(char)
      result << char * 2
    else
      result << char
    end
  end
  result
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')
