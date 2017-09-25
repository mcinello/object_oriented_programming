class Cat

  def initialize(name, food, time)
    @name = name
    @preferred_food = food
    @meal_time = time
  end

  def eats_at
    puts "#{@name} eats at #{@meal_time}PM"
  end

end

cat1 = Cat.new("Howie", "fish", "12")
cat2 = Cat.new("Oliver", "chicken", "2")

puts cat1.inspect
puts cat2.inspect

cat1.eats_at
puts cat1

cat2.eats_at
puts cat2
