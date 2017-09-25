class Player

  @gold_coins = 0
  @health_points = 10
  @lives = 5

  def level_up
    #increase lives by 1
  end

  def collect_treasure
    #increases gold coins by 1
    #if goold coins is a multiple of 10, then run the level_up method
  end

  def do_battle(damage)
    #subtracts from players health points
    #if health_points fall below 1, subtract 1 from lives, reset health_points to 10
    #if no more lives, method should run restart method
  end

  def restart
    #reset all attributes back to starting values
  end

end
