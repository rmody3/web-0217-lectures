Learning Goals
  self
  array iterators
  attr_accessor instance variables
  connecting the different classes together
  How tests fit in
  Associations ->
  Splat ->
  Yield


class Dog
  def initialize(name)
    @@all << self
  end

end

Dog.new()


1. Domain Modeling
  Restaurants
  Reviews
    belongs_to Customer
    belongs_to restaurant

    Review.new('it was good', Customer.new('bob'), Restaurant.new('famiglia'))
  Customers
