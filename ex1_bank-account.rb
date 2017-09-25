class BankAccount

  def initialize(total, interest)
    @balance = total
    @interest_rate = interest / 100
  end

  def deposit(amount)
    @balance += amount
    return @balance
  end

  def withdraw(amount)
    @balance -= amount
    return @balance
  end

  def gain_interest
    @balance += (@balance * @interest_rate)
    return @balance
  end

end

first_account = BankAccount.new(1000.00, 5.5)
puts first_account.inspect

first_account.deposit(100.00)
puts first_account.inspect

first_account.withdraw(500.50)
puts first_account.inspect

first_account.gain_interest
puts first_account.inspect
