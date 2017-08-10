class BankAccount

  attr_reader :balance
  @@minimum_balance = 200

  def initialize(opening_balance, account_holder)
    @balance = opening_balance
    raise ArgumentError if opening_balance < @@minimum_balance
  end

  def self.minimum_balance= (amount)
    @@minimum_balance = amount
  end

  def self.minimum_balance
    @@minimum_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def transfer(amount, other_account)
    withdraw(amount)
    other_account.deposit(amount)
  end

end

account = BankAccount.new(500, "Sarah")
other_account = BankAccount.new(1000, "Todd")
