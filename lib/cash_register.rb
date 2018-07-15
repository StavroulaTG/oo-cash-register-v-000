class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    @total += (price*quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = Integer(total - (@discount/100.0)*total)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end
end
