class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
]

def initialize(board = nil)
  @board = board || Array.new(0, " ")
end

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(input)
  index=input.to_i - 1
end

def move(index, current_player)
  @board[index]=current_player
end

def position_taken?(index)
  (@board[index] == "X" || @board[index] == "O")
end

def valid_move?(index)
  !(position_taken?(index)) && index.between?(0,8)
end

def turn
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  player = current_player
    if valid_move?(index)
      move(index,player)
      display_board
    else turn
  end
end

def turn_count
  turn_counter = 0
  @board.each do |position|
    if position == "X" || position == "O"
      turn_counter += 1
    end
  end
  turn_counter
end

