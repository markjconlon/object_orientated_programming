class Player

  def initialize ( name )
    @name = name
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    if (@gold_coins + 1) % 10 == 0
      @gold_coins += 1
      level_up()
    else
      @gold_coins += 1
    end
  end

  def do_battle
    if (@health_points - 1) != 0
      @health_points -= 1
    elsif (@health_points - 1) == 0 && (@lives -1) !=0
      @health_points = 10
      @lives -= 1
    else
      restart()
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end
