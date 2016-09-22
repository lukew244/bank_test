require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new}

  describe 'transactions' do
    it 'contains a list of transactions' do
      expect(transaction.list).to eq([])
    end

    it 'can add transactions' do
      transaction.add(['14/01/2016', 100, 'withdraw'])
      expect(transaction.list).to include(['14/01/2016', 100, 'withdraw'])
    end

  end
end
