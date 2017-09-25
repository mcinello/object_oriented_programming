class PaperBoy

  def initialize(name)
    @name = name
    @experience = 0 #number of papers delivered
    @earnings = 0 #read-only
  end

  def quota
    first_delivery = 50
    @experience = (@experience * 0.50) + first_delivery #current quota is 50
    return @experience
  end

  def deliver(start_address, end_address)
    total_houses = (start_address..end_address).to_a
    total_houses.each do |address|
      if address <= 50
        @earnings += 0.25 # minimum earned = $12.5; adding 0.25 for every address delivered to
      elsif address > 50
        @earnings += 0.50
      end
    end
    if total_houses.length < 50
      @earnings -= 2.00
    end
    #update experience = if total_houses.length = 70, quota should be 85
    @experience = total_houses.length

    return @earnings, @experience
  end

  def report
    #return string of performance
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings}"
  end

end

#wage = $0.25 for ever paper delivered
# wage = $0.50 for every paper above quota
#if quota not met, lose $2

#min papers = 50
#quota 50% of experience + min papers
  #eg. if quota of 50 met, next time quota = 75

nick = PaperBoy.new("Nick")

nick.quota
nick.deliver(1, 70)

puts nick.inspect

puts nick.quota
