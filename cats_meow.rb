class Cat

  def initialize( name , preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    elsif @meal_time == 12
      return "#{@meal_time} PM"
    else
      return "#{@meal_time - 12} PM"
    end
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at " + eats_at()
  end
end

garfield = Cat.new("Garfield", "Lasagna", 12)
sylvester = Cat.new("Sylvester", "Tweety-Bird", 6)
