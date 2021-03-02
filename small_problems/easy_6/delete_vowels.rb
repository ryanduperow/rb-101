# Write a method that takes an array of strings, and returns an array of the same 
# string values, except with the vowels (a, e, i, o, u) removed.

VOWELS = 'aeiouAEIOU'

def remove_vowels(strings)
  strings.map { |string| string.delete(VOWELS)}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))