VALID_CHOICES = { rock: ['r', 'rock'],
                  paper: ['p', 'paper'],
                  scissors: ['sc', 'scissors'],
                  lizard: ['l', 'lizard'],
                  spock: ['sp', 'spock'] }

WINNING_MOVES = { rock: ['lizard', 'scissors'],
                  paper: ['rock', 'spock'],
                  scissors: ['lizard', 'paper'],
                  lizard: ['paper', 'spock'],
                  spock: ['scissors', 'spock'] }

COMPUTER_MOVES = %w(rock paper scissors lizard spock)

GOAL_WINS = 5

def prompt(message)
  puts("=> #{message}")
end

def valid_input(input)
  keys = VALID_CHOICES.keys
  num = 0
  while num < keys.length
    if VALID_CHOICES[keys[num]].include?(input.downcase)
      break keys[num]
    else
      num += 1
    end
  end
end

def win?(first, second)
  WINNING_MOVES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Dang it, you lost!")
  else
    prompt("Tie")
  end
end

def display_welcome
  prompt("Welcome to Lizard Spock, first to 5 Wins")
  prompt("Don't let the Machines win, Earth is counting on you!!!!")
end

def display_goodbye
  prompt("Thanks for playing!")
end

user_choice = ''
user_input = ''
user_wins = 0
computer_wins = 0

display_welcome

loop do
  loop do
    prompt("Choose one: #{COMPUTER_MOVES.join(', ')}")
    user_input = gets.chomp
    if valid_input(user_input)
      user_choice = VALID_CHOICES[valid_input(user_input)].last
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = COMPUTER_MOVES.sample
  system 'clear'
  puts "You chose: #{user_choice}; Skynet chose: #{computer_choice}"

  display_results(user_choice, computer_choice)

  if win?(user_choice, computer_choice)
    user_wins += 1
  elsif win?(computer_choice, user_choice)
    computer_wins += 1
  end

  prompt("The score is Humanity: #{user_wins}, Skynet: #{computer_wins}")

  next unless (user_wins == GOAL_WINS) || (computer_wins == GOAL_WINS)

  if user_wins == GOAL_WINS
    puts "You Won!!!!"
    puts "You've Saved Humanity!!!!"
  else
    puts "Skynet won, we're all doomed...."
  end

  prompt("Do you want to play again?(y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  user_wins = 0
  computer_wins = 0
end

display_goodbye
