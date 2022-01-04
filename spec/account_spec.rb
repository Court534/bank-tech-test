require "account"

describe Account do 
  describe "deposit" do
    it "Adds the deposit value to the balance" do
      account = Account.new
      expect { account.deposit(1) }.to change { account.balance }.by(1)
    end
  end
end