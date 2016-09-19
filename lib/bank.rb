class Bank

  attr_reader :menu, :balance

  def initialize
    @menu = ["Withdraw", "Deposit", "Balance", "Exit"]
    @balance = 0
    # load_menu
  end

  def load_menu
    loop do
      print_menu
      process_choice(STDIN.gets.chomp)
    end
  end

  def print_menu
    puts "Please select from the following list:"
    @menu.each do |i|
      puts i
    end
  end

  def process_choice(selection)
    case selection
    when "Withdraw"

    when "Deposit"
      deposit
    when "Balance"
      display_balance
    when "Exit"
      exit
    else
      puts "Command not recognised, please re-enter:"
    end
  end

  def display_balance
    puts "Balance: " + @balance.to_s
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end

bank = Bank.new
