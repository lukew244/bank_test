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
end
