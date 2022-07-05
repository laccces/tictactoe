# https://replit.com/@lacesoutdan/ProudTestyReality#main.rb 

#reference
blank = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]  
divider = "--+---+--"
example_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

puts "GENERATED NEW BOARD:"
puts "#{blank[0][0]} | #{blank[0][1]} | #{blank[0][2]}"
  puts divider
  puts "#{blank[1][0]} | #{blank[1][1]} | #{blank[1][2]}"
  puts divider
  puts "#{blank[2][0]} | #{blank[2][1]} | #{blank[2][2]}"

puts "Here's the board index:"
puts "#{example_board[0][0]} | #{example_board[0][1]} | #{example_board[0][2]}"
  puts divider
  puts "#{example_board[1][0]} | #{example_board[1][1]} | #{example_board[1][2]}"
  puts divider
  puts "#{example_board[2][0]} | #{example_board[2][1]} | #{example_board[2][2]}"

puts "Where would you like to go? Please enter a number between 1 & 9."

user_choice = gets.to_i

case user_choice
  when 1
    blank[0][0] = "X"
  when 2
    blank[0][1] = "X"
  when 3
    blank[0][2] = "X"
  when 4
    blank[1][0] = "X"
  when 5
    blank[1][1] = "X"
  when 6
    blank[1][2] = "X"
  when 7
    blank[2][0] = "X"
  when 8
    blank[2][1] = "X"
  when 9
    blank[2][2] = "X"
  else 
    puts "Error."
end

puts "#{blank[0][0]} | #{blank[0][1]} | #{blank[0][2]}"
puts divider
puts "#{blank[1][0]} | #{blank[1][1]} | #{blank[1][2]}"
puts divider
puts "#{blank[2][0]} | #{blank[2][1]} | #{blank[2][2]}"

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

#this needs to happen after each move, and then puts #{player_who_made_last_move} wins!
