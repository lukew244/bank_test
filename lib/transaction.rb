class Transaction
  attr_reader :list


  def initialize
    @list = []
  end

  def add(transaction)
      @list.push(transaction)
  end

end
