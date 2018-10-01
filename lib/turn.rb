def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && ! (position_taken?(board, index))
end

def position_taken?(board, index)
  ! (board[index] == " " || board[index] == "" || board[index] == nil) 
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input = converted_input - 1
end

def move(array, index, value = "X")
  array[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
 if valid_move?(board, index)
  
  move(board, index, "X")
end