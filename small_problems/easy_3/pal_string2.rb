# Write another method that returns true if the string passed as an argument is a palindrome,
# false otherwise. This time, however, your method should be case-insensitive, and it should
# ignore all non-alphanumeric characters. If you wish, you may simplify things by calling
# the palindrome? method you wrote in the previous exercise.

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')