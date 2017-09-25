class PaperBoy

  def initialize(name)
    @name = name
    @experience = 0 #number of papers delivered
    @earnings = 0 #read-only
  end

  def quota
    first_delivery = 50
    (@experience * 0.50) + first_delivery #current quota is 50
  end

  def deliver(start_address, end_address)
    total_houses = (start_address..end_address).to_a
    total_houses.each do |address|
      if address <= 50
        @earnings += 0.25 #50 deliveries = $12.50
      elsif address > 50
        @earnings += 0.50
      end
    end
    if total_houses.length < 50
      @earnings -= 2.00
    end

    @experience = total_houses.length

    return @earnings, @experience
  end

  def report
    #return string of performance
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings}"
  end

end

nick = PaperBoy.new("Nick")
bosh = PaperBoy.new("Bosh")

nick.deliver(1, 70)
bosh.deliver(1, 40)

puts nick.quota
puts bosh.quota

puts nick.report
puts bosh.report

nick.deliver(1, 80)
puts nick.quota
