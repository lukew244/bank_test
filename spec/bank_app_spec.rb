require 'bank'

describe Bank do
  subject(:bank) {described_class.new}

  describe 'menu' do
    it 'contains a list of items' do
      expect(bank.menu).to include("Exit")
    end

    it 'prints out the list on initialize' do
      expect { bank.print_menu }.to output(/Exit/).to_stdout
    end
  end

  describe 'balance' do
    it 'has a starting balance of zero' do
      expect(bank.balance).to eq 0
    end
  end

  describe 'account actions' do
    it 'user can view their balance' do
      expect { bank.display_balance }.to output(/Balance: 0/).to_stdout

    end

    it 'user can make deposits' do
      bank.deposit(100)
      expect(bank.balance).to eq 100
    end

    it 'user can withdraw funds' do
      bank.deposit(100)
      bank.withdraw(25)
      expect(bank.balance).to eq 75
    end

  end
end
