require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'

class ComputerTest < Minitest::Test

  def test_it_picks_the_first_plot
    computer = Computer.new
    actual = computer.column_picker
    expected = [1, 2, 3, 4].include?(actual)

    assert expected
  end

  def test_it_picks_row
    computer = Computer.new
    actual = computer.row_picker
    expected = ["a", "b", "c", "d"].include?(actual)

    assert expected
  end

  def test_does_it_make_a_grid
    computer = Computer.new
    actual = computer.grid
    expected =   {
    bs: [" ", " *BATTLESHIP*", " "],
    n:  [" ", "1", "2", "3", "4"],
    a:  ["A", " ", " ", " ", " "],
    b:  ["B", " ", " ", " ", " "],
    c:  ["C", " ", " ", " ", " "],
    d:  ["D", " ", " ", " ", " "]
    }

    assert_equal expected, actual
  end
end
