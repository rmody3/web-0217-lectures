class Item
  @@all = []

  attr_accessor :restaurant, :name, :price

  def initialize(name:, price:, restaurant:)
    @name = name
    @price = price
    @restaurant = restaurant
    @@all << self
  end





end
