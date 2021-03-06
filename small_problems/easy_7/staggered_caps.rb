# Write a method that takes a String as an argument, and returns a new String 
# that contains the original value using a staggered capitalization scheme in 
# which every other character is capitalized, and the remaining characters are 
# lowercase. Characters that are not letters should not be changed, but count 
# as characters when switching between upper and lowercase.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper  
    end
    result
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')