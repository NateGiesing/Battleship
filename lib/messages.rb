module Messages

  def welcome
    # require "pry"; binding.pry
    puts "Welcome to Battleship!!!"
  end

  def display_initial_prompt
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
end
