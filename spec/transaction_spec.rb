# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe 'initialize' do
    before(:each) do
      allow(Time).to receive(:now).and_return(@time_now)
    end

    it 'Shows the relative transaction when a customer deposits money' do
      transaction = Transaction.new(50, nil, 150)
      expect(transaction.credit).to eq 50
      expect(transaction.debit).to eq nil
      expect(transaction.balance).to eq 150
      expect(transaction.date).to eq @time_now
    end
  end
end
