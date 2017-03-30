class Rover

  def initialize
    @x_coordinate = rand(1..9)
    @y_coordinate = rand(1..9)
    @direction    = "N"
  end

  def read_instruction(string)
    if string.is_a?(String)
      command_array = string.upcase().split("")
      command_array.each do |letter|
        if letter == "M"
          move()
        elsif letter == "L"
          turn("L")
        elsif letter == "R"
          turn("R")
        else
          puts "Oops looks like you used a character other than M, R, L"
        end
      end
      puts location()
    else
      puts "You must provide strings only [M] = move [R] = rotate 90 degrees to the right [L] = rotate 90 degrees to the left you can provide more than one letter at a time without spaces"
    end
  end

  def move
    if @direction == "N"
      @y_coordinate += 1
    elsif @direction == "S"
      @y_coordinate -= 1
    elsif @direction == "E"
      @x_coordinate += 1
    elsif @direction == "W"
      @x_coordinate -= 1
    end

  end

  def turn(direction)
    if direction == "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "W"
        @direction = "N"
      end

    else
      if @direction == "N"
        @direction = "W"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      elsif @direction == "W"
        @direction = "S"
      end
    end
  end

  def location
    return "Your current location is #{@x_coordinate} #{@y_coordinate} #{@direction}"
  end
end
