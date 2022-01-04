# frozen_string_literal: true

require 'account'

describe Account do
  describe 'deposit' do
    it 'Adds the deposit value to the balance' do
      account = Account.new
      expect { account.deposit(1) }.to change { account.balance }.by(1)
    end

    it 'Records the transaction to the transaction log' do
      account = Account.new
      expect { account.deposit(1) }.to change { account.transaction_log.length }.by(1)
    end
  end

  describe 'withdraw' do
    it 'Should subtract the withdraw ammount from the balance' do
      account = Account.new
      account.deposit(1)
      expect { account.withdraw(1) }.to change { account.balance }.by(-1)
    end

    it 'Records the transaction to the transaction log' do
      account = Account.new
      account.deposit(1)
      expect { account.withdraw(1) }.to change { account.transaction_log.length }.by(1)
    end
  end
end
