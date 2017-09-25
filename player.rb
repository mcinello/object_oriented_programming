class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

#answer 6
  def level_up #works
    @lives += 1
    return @lives
  end

#answer 7
  def collect_treasure #works
    @gold_coins += 1
    if @gold_coins % 10 == 0
      Player.new.level_up
      return level_up
    end
  end

#answer 8
  def do_battle(damage)
    @health_points -= damage #works
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      return @lives, @health_points
    end
    return @health_points
  end

  # def restart
  #   Player.new #reset all attributes back to starting values
  # end

end

player1 = Player.new
puts player1.inspect

# 20.times do
#   player1.collect_treasure
#   puts player1.inspect
# end

player1.do_battle(12)
puts player1.inspect

#   if @health_points < 1 #if health_points fall below 1, subtract 1 from lives, reset health_points to 10
#       @lives -= 1
#       @health_points = 10
#       return health_points#?? how to call specific attribute from method??
#       if @lives == 0
#         Player.new.restart #if no more lives, method should run restart method
#         return restart
#       end
#   end
