class Restaurant
  attr_accessor :name
  # def name
  #   @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end

  def initialize(name)
    @name = name
  end

  # def name
  #   @name = 'bobby'
  # end

  def waiters
    Waiter.all.select do |waiter|
      waiter.restaurant == self
    end
  end

  def orders
    # start with all of the orders

    # Now for each order, we go to the bill,
    # from the bill, we get to the waiter
    # From the waiter, we get to the restaurant
      # if the restauratn matches what I am asking about, we are good
    Order.all.select do |order|
      order.bill.waiter.restaurant == self
    end
  end
  # orders -> [<order customer=<>>]

  def customers
    self.orders.map do |order|
      order.customer
    end
  end


end


# # Waiters
#   name  restaurant
#   'bob'
