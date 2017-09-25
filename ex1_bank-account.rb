class BankAccount

  def initialize(total)
    @balance = total
    # @interest_rate = interest
  end

  def deposit(amount)
    @balance += amount
    return @balance
  end

  # def withdraw(amount)
  #   @balance -= amount
  # end
  #
  # def gain_interest(rate)
  #   @interest_rate
  # end

end

first_account = BankAccount.new(1000.00)

puts first_account.inspect

#
#
# first_account.deposit(100.00)
# puts first_account.inspect
