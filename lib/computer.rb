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
            # require "pry"; binding.pry
  end

  def ship_one
    # require "pry"; binding.pry
    key = row_picker
    index = column_picker
    grid_writer(key, index)
    second_placement_validator(key, index)
  end

  def ship_two
    key = row_picker
    index = column_picker
    valid = grid_validator(key, index)
    if valid
      grid_writer(key, index)
    else
      ship_two
    end
  end



  def grid_writer(key, index)
    grid[key][index] = "$"
  end

  def grid_validator(row, column)
    if ["a", "b", "c", "d"].include?(row)
      if ["1", "2", "3", "4"].include?(column)
        true
    else
      invalid_message
      end
    end
  end

  def second_placement_validator(key, index)
    possible_position = []
    if key != :a
      row = (key.to_s.ord-1).chr.to_sym
      possible_position << [row, index]
    end
    if index != 4
      column = index +1
      possible_position << [key, column]
    end
    if key != :d
      row = (key.to_s.ord+1).chr.to_sym
      possible_position << [row, index]
    end
    if index != 1
      column = index - 1
      possible_position << [key, column]
    end
    # require "pry"; binding.pry
    second_position = possible_position.sample
    grid_writer(second_position[0], second_position[1])
  end

  def column_picker
    # ["1", "2", "3", "4"].rand
    rand(1..4)
  end

  def row_picker
    [:a, :b, :c, :d].sample
  end
end
