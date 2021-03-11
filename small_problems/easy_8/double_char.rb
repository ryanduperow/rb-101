# Write a method that takes a string, and returns a new string in which every 
# character is doubled.

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char * 2
  end
  result
end

p repeater('Hello')
p repeater("Good Job!")
p repeater('')