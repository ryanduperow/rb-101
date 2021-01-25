# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#prints the same as array1.  Array1 and array2 have different object ID's, but they contain strings with the string objects,
#so if the string is changed on array1, it will be reflected on array2 as well.