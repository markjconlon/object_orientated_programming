class Rover

  def initialize
    @x_coordinate = rand(1..9)
    @y_coordinate = rand(1..9)
    @direction    = "N"
  end

  def read_instruction(string)
    if string.is_a?(String)

    else
      puts "You must provide strings only [M] = move [R] = rotate 90 degrees to the right [L] = rotate 90 degrees to the left you can provide more than one letter at a time without spaces"
    end
  end

  def move

  end

  def turn(direction)

  end

  def location
    return "#{@x_coordinate} #{@y_coordinate} #{@direction}"
  end
end
