#Mutated Version

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end  

  numbers
end  

my_numbers = [3, 6, 9, 12, 33, 66, 21]
p double_numbers!(my_numbers)
p my_numbers