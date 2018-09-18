def welcome
  puts "Welcome to the Blackjack Table" 
end

def deal_card
  random = 1 + rand(11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 total = deal_card + deal_card
 display_card_total(total)
 return total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  
  case input 
  
  when 's'
    card_total
  when 'h'
    new_card = deal_card
  card_total += new_card
  else 
    invalid_command
    prompt_user
end 
  card_total
end

def invalid_command
   puts "Please enter a valid key, Type H for hit or Type S Stay"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome 
 card_total = initial_round
 until card_total > 21
 card_total = hit?(card_total)
 display_card_total(card_total)
 end
 end_game(card_total)
end

runner 
    
