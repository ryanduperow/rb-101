# Write a method that returns an Array that contains every other element of an Array that
# is passed in as an argument. The values in the returned list should be those values that
# are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(array)
  odd_elements = []
  index = 0

  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

arr1 = [1, 2, 3, 4, 5, 6]
arr2 = ['ABC', 'DEF', 'AAA', 'QER']

p oddities(arr1)
p oddities(arr2)