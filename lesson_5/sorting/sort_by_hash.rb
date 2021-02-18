people = { Kate: 27, john: 25, Mike:  18 }

people.sort_by do |name, _|
  name.capitalize
end
# => [[:john, 25], [:Kate, 27], [:Mike, 18]]
# Need to add .capitalize to sort name alphabetically because of ASCII differences
# between lowercase and capital letters.