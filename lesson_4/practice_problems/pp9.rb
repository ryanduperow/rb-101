# Write a program that capitalizes the first letter of each word in the folloiwng phrase:

words = "the flintstones rock"

words.split.map { |word| word.capitalize }.join(' ')

#=> "The Flintstones Rock"