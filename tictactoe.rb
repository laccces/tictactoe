
def blank_board()
  blank = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]  
  divider = "--+---+--"
  
  puts "#{blank[0][0]} | #{blank[0][1]} | #{blank[0][2]}"
  puts divider
  puts "#{blank[1][0]} | #{blank[1][1]} | #{blank[1][2]}"
  puts divider
  puts "#{blank[2][0]} | #{blank[2][1]} | #{blank[2][2]}"
end

puts blank_board

def board_index()
  example_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  divider = "--+---+--"

  puts "#{example_board[0][0]} | #{example_board[0][1]} | #{example_board[0][2]}"
  puts divider
  puts "#{example_board[1][0]} | #{example_board[1][1]} | #{example_board[1][2]}"
  puts divider
  puts "#{example_board[2][0]} | #{example_board[2][1]} | #{example_board[2][2]}"
end

puts board_index