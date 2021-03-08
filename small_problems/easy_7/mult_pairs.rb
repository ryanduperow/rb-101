# Write a method that takes two Array arguments in which each Array contains a 
# list of numbers, and returns a new Array that contains the product of every 
# pair of numbers that can be formed between the elements of the two Arrays. 
# The results should be sorted by increasing value. You may assume that neither 
# argument is an empty Array.

def multiply_all_pairs(list_1, list_2)
  products = []
  list_1.each do |item_1|
    list_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])