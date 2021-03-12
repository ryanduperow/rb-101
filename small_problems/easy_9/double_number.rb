# Write a method that returns 2 times the number provided as an argument, unless the 
# argument is a double number; double numbers should be returned as-is.

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center -1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

p twice(37)
p twice(44)
p twice(334433)
p twice(444)
p twice(107)
p twice(103103)
p twice(3333)
p twice(7676)
p twice(123_456_789_123_456_789)
p twice(5)