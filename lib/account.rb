# frozen_string_literal: true

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

  def withdraw(amount)
    raise 'Error! Insufficient funds' if (@balance - amount).negative?

    @balance -= amount
    @transaction_log.push(amount)
  end
end
