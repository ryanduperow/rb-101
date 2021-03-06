# Write a method that takes a string as an argument and returns a new string in 
# which every uppercase letter is replaced by its lowercase version, and every 
# lowercase letter by its uppercase version. All other characters should be 
# unchanged.

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def swapcase(string)
  char_array = string.chars

  char_array.map do |char|
    if UPPERCASE_CHARS.include?(char)
      char.downcase!
    elsif LOWERCASE_CHARS.include?(char)
      char.upcase!
    end
  end

  char_array.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')