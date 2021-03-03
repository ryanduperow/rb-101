# Write a method that takes two Arrays as arguments, and returns an Array that 
# contains all of the values from the argument Arrays. There should be no 
# duplication of values in the returned Array, even if there are duplicates in 
# the original Arrays.

def merge(arr1, arr2)
  combined_array = (arr1 + arr2).uniq
  combined_array
end

p merge([1, 2, 3, 3, 6, 6, 7], [3, 3, 7, 6, 8, 9])