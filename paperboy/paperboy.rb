class Paperboy

  attr_reader :earnings
  attr_accessor :experience, :name

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    return (50 + @experience/2)
  end

  def deliver(start_address, end_address)
    number_of_deliveries = end_address - start_address
    @experience += number_of_deliveries
    todays_earnings = 0
    if number_of_deliveries == quota()
      todays_earnings = number_of_deliveries * 0.25
    elsif number_of_deliveries > quota()
      todays_earnings = ( (quota() * 0.25) + (number_of_deliveries - quota()) * 0.50)
    else
      todays_earnings = number_of_deliveries * 0.25 - 2
    end

    @earnings += todays_earnings
    return "On this trip you earned $#{todays_earnings} , well done!"
  end

  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end
end
