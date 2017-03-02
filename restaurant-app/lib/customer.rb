class Customer

  def orders
    Order.all.select do |order|
      order.customer == self
    end
  end

  def items
    self.orders.map do |order|
      order.item
    end
  end
end


# bob = Customer.new('bob')
# bob.orders
