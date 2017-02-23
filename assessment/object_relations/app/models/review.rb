class Review
  @@all = []
  attr_accessor :description, :customer, :restaurant

  def initialize(description, customer, restaurant)
    @description = description
    customer_object = nil
    if Customer.find_by_name(customer) == nil
      customer_object = Customer.new(restaurant)
    else
      customer_object = Customer.find_by_name(customer)
    end
    @customer = customer_object
    restaurant_object = nil
    if Restaurant.find_by_name(restaurant) == nil
      restaurant_object = Restaurant.new(restaurant)
    else
      restaurant_object = Restaurant.find_by_name(restaurant)
    end
    @restaurant = restaurant_object
    @@all << self
  end

  def self.all
    @@all
  end

end
