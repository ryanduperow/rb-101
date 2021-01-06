def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i() != 0
end

loop do
  prompt("Welcome to the Batting Average Calculator")
  prompt(".........................................")

  prompt("What is your player's name?")

  player_name = ""
  loop do
    player_name = gets.chomp

    if player_name.empty?
      prompt("Must enter a name")
    else
      break
    end
  end

  number_of_hits = ''
  loop do
    prompt("How many hits did #{player_name} have this season?")
    number_of_hits = gets.chomp

    if valid_number?(number_of_hits)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number")
    end
  end

  at_bats = ''
  loop do
    prompt("How many At Bats did #{player_name} have this season?")
    at_bats = gets.chomp

    if valid_number?(at_bats)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number")
    end
  end

  prompt("Calculating Batting Average...........")

  batting_average = number_of_hits.to_f / at_bats.to_f

  prompt("#{player_name}'s batting average is: #{batting_average}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the Batting Average Calulator")
prompt("Come back soon!")
