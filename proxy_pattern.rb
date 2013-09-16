#Proxy Pattern

class AccountProxy

  def initialize(real_account)
    @subject = real_account
  end

  def method_missing(name,*args)
    puts "delegating #{name} message to subject."
    @subject.send(name,*args)
  end

end

ap = AccountProxy.new(BankAccount.new(100))
ap.deposit(25)
ap.withdraw(50)
puts "account balance is now: #{ap.balance}"