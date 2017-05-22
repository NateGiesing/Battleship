# class Grid

    def grid
        {
      bs: [" ", " *BATTLESHIP*", " "],
      n:  [" ", "1", "2", "3", "4"],
      a:  ["A", " ", " ", " ", " "],
      b:  ["B", " ", "3", " ", " "],
      c:  ["C", " ", "2", "2", " "],
      d:  ["D", " ", " ", " ", " "]
      }
    end

    grid = [bs,n,a,b,c,d]
    puts grid.flatten

    puts "player shots fired #{}, #{} hits, #{} misses."
    puts "computer shots fired #{}, #{} hits, #{} misses."
