class Cat

  def initialize(name, food, time)
    @name = name
    @preferred_food = food
    @meal_time = time
  end

  def eats_at
    puts "#{@name} eats at #{@meal_time}"
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}."
  end

end

cat1 = Cat.new("Howie", "fish", "12 PM")
cat2 = Cat.new("Oliver", "chicken", "2 PM")

# puts cat1.inspect
# puts cat2.inspect
#
# cat1.eats_at
# puts cat1
#
# cat2.eats_at
# puts cat2

puts cat1.meow

puts cat2.meow
