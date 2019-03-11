def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rcard = rand(1..11)
  return rcard.to_i
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
  return num
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
choice = gets.chomp
return choice.to_s
end

def end_game(num1)
  puts "Sorry, you hit #{num1}. Thanks for playing!"
end

def initial_round
  $card = deal_card
  $card += deal_card
      display_card_total($card)
  return $card

end

def hit?(num1)
  prompt_user
  let = get_user_input
  if let == "h"
    $t2 = deal_card
    $tot = $card += $t2
    return $tot.to_i
  else
  return $tot
      display_card_total(47)
end

end

def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit
  until $tot < 21 do
    hit?
  end
end_game
  end
