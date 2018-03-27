WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return (input.to_i - 1)
end

def move(board, idx, token)
  v = valid_move?(board, idx)
  
  if v
    board[idx] = token
    display_board(board)
    return v
  end
  
  !v
end

def valid_move?(board, idx)
  if !idx.between?(0, 8)
    return false
  end
  
  !position_taken?(board, idx)
end

def position_taken?(board, idx)
  chr = board[idx].strip
  !(chr == "")
end

def turn()

  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  
  puts "Please enter a move: 1-9"
  rtn = gets.strip
  idx = input_to_index(rtn)
  
  if !move(board, idx) 
    
  
end

