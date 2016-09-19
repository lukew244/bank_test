class Bank

  attr_reader :menu, :balance

  def initialize
    @menu = ["Withdraw", "Deposit", "Balance", "Exit"]
    @balance = 0
    # print_menu
  end

  def print_menu
    @menu.each do |i|
      puts i
    end


  end

end

# bank = Bank.new
