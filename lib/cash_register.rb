class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      @total -= (@total *= @discount)/100
      return "After the discount, the total comes to $#{total}."
    else return "There is no discount to apply."
    end
  end
  
  def items(title, price, quantity = 1)
    item_array = []
    item_array << title when add_item(title, price, quantity = 1)
  end
  
end
