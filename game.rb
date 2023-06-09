# frozen_string_literal: true

# Class to create a game of life with the following rules:
class GameLife
  def initialize(row, column)
    @row = row
    @column = column
  end

  # Method to create a board with random values
  def start_game
    board = Array.new(@row) { Array.new(@column, false) }
    5.times do
      row = Random.new.rand(0..@row - 1)
      column = Random.new.rand(0..@column - 1)
      board[row][column] = true
    end

    puts "Board created with #{board.length} rows and #{board[0].length} columns"
    board
  end

  # Method to print the board
  def print_board(board)
    board.each do |row|
      row.each do |column|
        print column ? '*' : '.'
      end
      puts
    end
  end

  # Method to count the alive cells around
  def alive_cells_around(row, column, board)
    count = 0
    (-1..1).each do |i|
      (-1..1).each do |j|
        next if i.zero? && j.zero?

        count += 1 if valid_cell(row + i, column + j) && board[row + i][column + j]
      end
    end
    count
  end

  # Method to validate the cell
  def valid_cell(row, column)
    row >= 0 && row < @row && column >= 0 && column < @column
  end

  # Method to create the next generation
  def next_generation(board)
    new_board = Array.new(@row) { Array.new(@column, false) }
    @row.times do |row|
      @column.times do |column|
        alive = board[row][column]
        alive_neighbors = alive_cells_around(row, column, board)
        new_board[row][column] = (alive && alive_neighbors.between?(2, 3)) || (!alive && alive_neighbors == 3)
      end
    end
    new_board
  end
end

game = GameLife.new(4, 8)
start_game = game.start_game
game.print_board(start_game)
puts "Next generation\n\n"
puts '------------------'
next_generation = game.next_generation(start_game)
game.print_board(next_generation)
