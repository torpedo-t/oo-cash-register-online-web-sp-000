require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initilization(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item_info
    item_info[:price] = price
    item_info[:quantity] = quantity
    @cart << item_info
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{total}."
    end

 def items
   item_name = []
   @cart.each do |item_info|
     for qty in 1..item_info[:quantity]
       item_name << item_info[:name]
     end
   end
   item_names
  end

  def void_last_transaction
    @total -= @price
  end
end
