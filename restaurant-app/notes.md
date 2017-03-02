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


  # 1. think about belongs to and has many
  # 2. think about instances
  # restaurant
    # has many items
  # Menu Item

    # Pizza | price

    # Popcorn
  # Order
  #   customer | menu item |  bill
  #   sally        pizza    first_bill
  #   sally      coke    first_bill
  #
  #
  # # Bill           date      waiter
  #   first_bill | saturday | mr. waiter
  #   second_bill | sunday    mr. waiter

  #   waiter
  #     name | restaurant
  #     bob     famiglia
  #     fred    famiglia
        sam   | pizza hut
  #   restaurant
  #     famiglia
  #   name


  # 1. If it's a belongs to relationship -> the has to live on the model with the belongs_to
  # 2. If it's a has many, we cannot store the data on that item
  # 3.

Array Iterators
  I. Am I ok with the return value the same as my input array
    -> Each
  II.
    Do I want the same number of elements as my input array?
      -> Map
    Do I want more than one, but fewer number
      Select
    Do I only want one element from the starting array  
      Find/Detect
