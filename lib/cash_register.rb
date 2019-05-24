class CashRegister
  attr_accessor :total, :discount, :item_list
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_list = []
  end
  
  def add_item(title, price, quantity = 1)
    @item_list << title(quantity)
    self.total += (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      @total -= (@total *= @discount)/100
      return "After the discount, the total comes to $#{total}."
    else return "There is no discount to apply."
    end
  end
  
  def items
    @item_list
  end
  
end
