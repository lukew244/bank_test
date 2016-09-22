require_relative 'transaction'

class Bank

  attr_reader :menu, :balance

  def initialize(transaction = Transaction.new)
    @menu = ["Withdraw", "Deposit", "Balance", "Print", "Exit"]
    @balance = 0
    @transaction = transaction
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
      user_input = get_transaction("withdraw")
      @transaction.add(user_input)
    when "Deposit"
      user_input = get_transaction("deposit")
      @transaction.add(user_input)
    when "Balance"
      display_balance
    when "print"
      puts @transaction.list
    when "Exit"
      exit
    else
      puts "Command not recognised, please re-enter:"
    end
  end

  def get_transaction(transaction_type)
    puts "Date:"
    date = STDIN.gets.chomp
    puts "Amount:"
    amount = STDIN.gets.chomp
    return [date, amount, transaction_type]
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
