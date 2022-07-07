#reference
@blank = [[".", ".", "."], [".", ".", "."], [".", ".", "."]]  
@divider = "--+---+--"
@example_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
@i = 0

def board
  puts "#{@blank[0][0]} | #{@blank[0][1]} | #{@blank[0][2]}"
  puts @divider
  puts "#{@blank[1][0]} | #{@blank[1][1]} | #{@blank[1][2]}"
  puts @divider
  puts "#{@blank[2][0]} | #{@blank[2][1]} | #{@blank[2][2]}"
end 

def board_index
  puts "Here's the board index:"
  puts "#{@example_board[0][0]} | #{@example_board[0][1]} | #{@example_board[0][2]}"
  puts @divider
  puts "#{@example_board[1][0]} | #{@example_board[1][1]} | #{@example_board[1][2]}"
  puts @divider
  puts "#{@example_board[2][0]} | #{@example_board[2][1]} | #{@example_board[2][2]}"
end

def player_one_move
  player_one_choice = gets.to_i

  case player_one_choice
    when 1
      @blank[0][0] = "X"
    when 2
      @blank[0][1] = "X"
    when 3
      @blank[0][2] = "X"
    when 4
      @blank[1][0] = "X"
    when 5
      @blank[1][1] = "X"
    when 6
      @blank[1][2] = "X"
    when 7
      @blank[2][0] = "X"
    when 8
      @blank[2][1] = "X"
    when 9
      @blank[2][2] = "X"
    else 
      puts "Error."
  end
end

def player_two_move
  player_two_choice = gets.to_i

  case player_two_choice
    when 1
      @blank[0][0] = "O"
    when 2
      @blank[0][1] = "O"
    when 3
      @blank[0][2] = "O"
    when 4
      @blank[1][0] = "O"
    when 5
      @blank[1][1] = "O"
    when 6
      @blank[1][2] = "O"
    when 7
      @blank[2][0] = "O"
    when 8
      @blank[2][1] = "O"
    when 9
      @blank[2][2] = "O"
    else 
      puts "Error."
  end
end

def check_winner
  if @blank[0][0] == "X" && @blank[0][1] == "X" && @blank[0][2] == "X"
    @i += 1
  elsif @blank[1][0] == "X" && @blank[1][1] == "X" && @blank[1][2] == "X"
    @i += 1
  elsif @blank[2][0] == "X" && @blank[2][1] == "X" && @blank[2][2] == "X"
    @i += 1
  elsif @blank[0][0] == "X" && @blank[1][1] == "X" && @blank[2][2] == "X"
    @i += 1
  elsif @blank[0][2] == "X" && @blank[1][1] == "X" && @blank[2][0] == "X"
    @i += 1
  elsif @blank[0][0] == "X" && @blank[1][0] == "X" && @blank[2][0] == "X"
    @i += 1
  elsif @blank[0][1] == "X" && @blank[1][1] == "X" &&  @blank[2][1] == "X"
    @i += 1
  elsif @blank[0][2] == "X" && @blank[1][2] == "X" && @blank[2][2] == "X"
    @i += 1
  elsif @blank[0][0] == "O" && @blank[0][1] == "O" && @blank[0][2] == "O"
    @i += 1
  elsif @blank[1][0] == "O" && @blank[1][1] == "O" && @blank[1][2] == "O"
    @i += 1
  elsif @blank[2][0] == "O" && @blank[2][1] == "O" && @blank[2][2] == "O"
    @i += 1
  elsif @blank[0][0] == "O" && @blank[1][1] == "O" && @blank[2][2] == "O"
    @i += 1
  elsif @blank[0][2] == "O" && @blank[1][1] == "O" && @blank[2][0] == "O"
    @i += 1
  elsif @blank[0][0] == "O" && @blank[1][0] == "O" && @blank[2][0] == "O"
    @i += 1
  elsif @blank[0][1] == "O" && @blank[1][1] == "O" &&  @blank[2][1] == "O"
    @i += 1
  elsif @blank[0][2] == "O" && @blank[1][2] == "O" && @blank[2][2] == "O"
    @i += 1
  end
end

#play the game
puts "Enter name for Player 1:"
player_one = gets

puts "Enter name for Player 2:"
player_two = gets

puts "GENERATED NEW BOARD:"
board

while @i < 1
  puts "#{player_one}, where would you like to go? Please enter a number between 1 & 9."
  board_index
  player_one_move
  puts "Here's your move:"
  board
  check_winner
  break if @i == 1
  puts "#{player_two}, where would you like to go? Please enter a number between 1 & 9."
  player_two_move
  puts "Here's your move:"
  board
  check_winner
end

puts "You win!"