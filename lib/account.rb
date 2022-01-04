class Account
  attr_reader :balance, :transaction_log

  def initialize
    @balance = 0
    @transaction_log = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_log.push(amount)
  end
end