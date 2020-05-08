require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initilization(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << items
    end
  end

  def apply_discount
    if @discount > 0
      @amount_off = (price * discount)/100
      @total -= @amount_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
  end
end

  def void_last_transaction
    @total -= @price

  end
end
