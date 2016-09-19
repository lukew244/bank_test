require 'bank'

describe Bank do
  subject(:bank) {described_class.new}

  describe 'menu' do
    it 'contains a list of items' do
      expect(bank.menu).to eq([])
    end

  end
end
