
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...12)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
  user_input
end

def end_game(end_total)
  # code #end_game here
  puts "Sorry, you hit #{end_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  
  display_card_total(total)
  total
end

def hit?(number)
  # code hit? here
  prompt_user
  if get_user_input == 'h'
    number += deal_card  
  end
  number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome

  current_total = initial_round
  
  until current_total > 21 do
    current_total = hit?(current_total)
    display_card_total(current_total)
  end

  end_game(current_total)

end
    
