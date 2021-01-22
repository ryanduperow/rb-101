# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

(1..99).each do |num|
  if num.odd?
    p num
  end
end

