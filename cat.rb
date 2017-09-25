class Cat

  def initialize(name, food, time)
    @name = name
    @preferred_food = food
    @meal_time = time
  end

end

cat1 = Cat.new("Howie", "fish", "12")
cat2 = Cat.new("Oliver", "chicken", "14")

puts cat1.inspect
puts cat2.inspect
