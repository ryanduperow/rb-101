#manual iteration
numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

#each
[1, 2, 3].each do |num|
  puts num
end 
