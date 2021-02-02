# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |index| name[0, 2] == "Be" }