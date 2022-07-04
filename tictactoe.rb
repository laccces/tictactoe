# https://replit.com/@lacesoutdan/ProudTestyReality#main.rb 

blank = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]  
divider = "--+---+--"
example_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def blank_board() 
  blank = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]  
  divider = "--+---+--"

  puts "#{blank[0][0]} | #{blank[0][1]} | #{blank[0][2]}"
  puts divider
  puts "#{blank[1][0]} | #{blank[1][1]} | #{blank[1][2]}"
  puts divider
  puts "#{blank[2][0]} | #{blank[2][1]} | #{blank[2][2]}"
end

puts blank_board()

def board_index()
  example_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

  puts "#{example_board[0][0]} | #{example_board[0][1]} | #{example_board[0][2]}"
  puts divider
  puts "#{example_board[1][0]} | #{example_board[1][1]} | #{example_board[1][2]}"
  puts divider
  puts "#{example_board[2][0]} | #{example_board[2][1]} | #{example_board[2][2]}"
end

puts board_index

puts "Where would you like to go? Please enter a number between 1 & 9."

def user_choice
  blank = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]  
  divider = "--+---+--"
  user_choice = gets.to_s

  if user_choice == "1"
    blank[0][0] = "X"
  elsif user_choice == "2"
    blank[0][1] = "X"
  elsif user_choice == "3"
    blank[0][2] = "X"
  elsif user_choice == "4"
    blank[1][0] = "X"
  elsif user_choice == "5"
    blank[1][1] = "X"
  elsif user_choice == "6"
    blank[1][2] = "X"
  elsif user_choice == "7"
    blank[2][0] = "X"
  elsif user_choice == "8"
    blank[2][1] = "X"
  elsif user_choice == "9"
    blank[2][2] = "X"
  else 
    puts "Error. Please enter a number between 1 & 9"
  end

  p blank 
end

#logic for wins/losses

#horizontals
if blank[0][0] == "X" && blank[0][1] == "X" && blank[0][2] == "X"

if blank[1][0] = "X" && blank[1][1] = "X" && blank[1][2] = "X"

if blank[2][0] = "X" && blank[2][1] = "X" && blank[2][2] = "X"

#diagonals
if blank[0][0] == "X" && blank[1][1] == "X" && blank[2][2] == "X"

if blank[0][2] = "X" && blank[1][1] = "X" && blank[2][0] = "X"

#verticals
if blank[0][0] = "X" && blank[1][0] = "X" && blank[2][0] = "X"

if blank[0][1] = "X" && blank[1][1] = "X" &&  blank[2][1] = "X"

if blank[0][2] = "X" && blank[1][2] = "X" && blank[2][2] = "X"