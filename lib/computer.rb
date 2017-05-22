class Computer
attr_reader :grid

  def initialize
    @grid = {
              bs: [" ", " *BATTLESHIP*", " "],
              n:  [" ", "1", "2", "3", "4"],
              a:  ["A", " ", " ", " ", " "],
              b:  ["B", " ", " ", " ", " "],
              c:  ["C", " ", " ", " ", " "],
              d:  ["D", " ", " ", " ", " "]
            }
  end

  def ship_two
    # get a column from column picker
    # get a row from row picker
    # change the grid plot point to $ for the corresponding column and row
    # ask direction_picker to pick the next plot point (watch out for if statement)
      # make it pick until the hash value is " ", if so, change hash position to $
  end

  def column_picker
    # ["1", "2", "3", "4"].random
    rand(1..4)
  end

  def row_picker
    ["a", "b", "c", "d"].sample
  end
end
