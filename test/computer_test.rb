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
    expected = [:a, :b, :c, :d].include?(actual)

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

  def test_cant_place_on_invalid_board_area
    computer = Computer.new
    row = "e"
    column = "5"
    refute computer.grid_validator(row, column)
  end

  def test_can_only_place_on_valid_board_area
    computer = Computer.new
    row = "a"
    column = "3"
    assert computer.grid_validator(row, column)
  end

  def test_places_the_first_placement
    computer = Computer.new
    row = :b
    column = 3
    computer.grid_writer(row, column)
    assert_equal "$", computer.grid[:b][3]
  end

   def test_if_it_places_right_location_for_second_placement
    computer = Computer.new
    row = :b
    column = 3
    computer.grid_writer(row, column)
    # row = :c
    # column = 4
    computer.second_placement_validator(row, column)
    expected = [computer.grid[:c][3], computer.grid[:a][3], computer.grid[:b][2],computer.grid[:b][4]].include?("$")

    assert expected
  end

  # def test_second_ship_places_valid
  #   computer = Computer.new
  #   computer.ship_one
  #   row = :c
  #   column = 4
  #   computer.ship_two
  #   assert_equal computer.grid.values
  # end





  # def test_for_valid_spot_on_second_ship
  #   computer = Computr.new
  #   row =
  # end
end
