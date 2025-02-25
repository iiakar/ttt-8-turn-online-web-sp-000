require 'pry'
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


def input_to_index(user_input)
    user_input = user_input.to_i
    user_input -= 1
end 
  
def valid_move?(board, index)
   if index.between?(0, 8) 
      if board[index] =="" ||  board[index] == " "
     return true
    end 
  end
end


def move(array,index,value="X")
      array[index] = value
end
