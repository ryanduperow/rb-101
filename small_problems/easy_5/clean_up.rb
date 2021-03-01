# Given a string that consists of some words (all lowercased) and an assortment of
# non-alphabetic characters, write a method that returns that string with all of
# the non-alphabetic characters replaced by spaces.

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

p cleanup("---what's my +*& line?") # == ' what s my line '
p cleanup("&&how @@much !!longer^^")