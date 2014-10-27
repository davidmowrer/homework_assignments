#!/usr/bin/env ruby
# stupid rubocop
class CashRegister
  attr_reader :total

  def initialize
    @total = 0.00
  end

  def purchase(amount)
    @total += amount
  end

  def pay(paid)
    if paid > total
      @change = paid - total
      @total = 0
    else
      @total -= paid
    end
  end
end

if __FILE__ == $0
  register = CashRegister.new
  puts "New register total: #{register.total}"

  puts 'Purchasing 22.98'
  register.purchase(22.98)
  puts "New total: #{register.total}"

  puts 'Purchasing $13.14'
  register.purchase(13.14)
  puts "New total: #{register.total.round(2)}"

  puts 'Paying 30.00'
  register.pay(30.00)
  puts "New total: #{register.total.round(2)}"

  puts 'Paying $10.00'
  register.pay(10.00)
  puts 'Change $3.88'
  register.pay(3.88)
  puts "New total: #{register.total.round(2)}"
end
