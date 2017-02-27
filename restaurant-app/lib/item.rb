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
