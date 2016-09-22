require 'bank'
require 'transaction'

transaction = Transaction.new
bank = Bank.new(transaction)

describe 'Feature test' do
  describe 'account transactions' do
    before do
    end

    it 'user can make a deposit transaction' do
      allow(STDIN).to receive(:gets).and_return("detail")
      bank.process_choice("deposit")
      expect { bank.process_choice("print") }.to output(/detail/).to_stdout

    end

    # it 'user can see transactions' do
    #   allow(STDIN).to receive(:gets).and_return("detail")
    #   bank.process_choice("Deposit")
    #   bank.process_choice("Withdrawal")
    #
    # end

  end
end
