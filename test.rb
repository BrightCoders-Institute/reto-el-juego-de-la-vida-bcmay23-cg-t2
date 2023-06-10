require "./game.rb"
require "minitest/autorun"

class GameLifeTest < Minitest::Test
  # def test_create_board
  #   gameUno = GameLife.new(2, 4)

  #   assert_equal Array.new(2) {Array.new(4, false)}, gameUno.start_game
  # end

  def test_alive_cells_around
    gameUno = GameLife.new(2, 4)
    gameStarted = gameUno.start_game
    count = gameUno.alive_cells_around(gameStarted)
    assert_equal "<1", count
  end
end
