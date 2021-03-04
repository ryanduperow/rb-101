# Write a method that combines two Arrays passed in as arguments, and returns a 
# new Array that contains all elements from both Array arguments, with the 
# elements taken in alternation. You may assume that both input Arrays are 
# non-empty, and that they have the same number of elements.

def interleave(array1, array2)
  combined_array = array1 + array2
  interleaved_array = []
  counter1 = 0
  counter2 = combined_array.size / 2

  loop do
    interleaved_array << combined_array[counter1]
    counter1 += 1
    interleaved_array << combined_array[counter2]
    counter2 += 1

    break if interleaved_array.size == combined_array.size
  end

  interleaved_array
end

p interleave([1, 2, 3], ['a', 'b', 'c'])