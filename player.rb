class Player

#starting points
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
    return @lives
  end

  def collect_treasure
    @gold_coins += 1   #increases gold coins by 1
    if @gold_coins % 10 == 0
      Player.new.level_up #if gold coins is a multiple of 10, then run the level_up method
    end
  end

  def do_battle(damage)
    @health_points -= damage #subtracts from players health points
    if @health_points < 1 #if health_points fall below 1, subtract 1 from lives, reset health_points to 10
      @lives -= 1
      Player.new.initialize.health_points #?? how to call specific attribute from method??
    elsif @lives == 0
      Player.new.restart #if no more lives, method should run restart method
    end
  end

  def restart
    Player.new.initialize #reset all attributes back to starting values

  end

end
