require_relative 'config/environment'

bob = Customer.new(name: "Bob")
jane = Customer.new(name: "Jane")
rose = Customer.new(name: "Rose")
george = Customer.new(name: "George")

stephanie = Waiter.new(name: "Stephanie")
ralph = Waiter.new(name: "Ralph")

pizza_masters = Restaurant.new(name: "Pizza Masters")

bill1 = Bill.new
bill2 = Bill.new

pizza = Item.new(name: "Pizza", price: 14, restaurant: pizza_masters)
nachos = Item.new(name: "Nachos", price: 9, restaurant: pizza_masters)
salad = Item.new(name: "Salad", price: 12, restaurant: pizza_masters)
pasta = Item.new(name: "Pasta", price: 11, restaurant: pizza_masters)
mozzarella_sticks = Item.new(name: "Mozzarella Sticks", price: 5, restaurant: pizza_masters)
fried_chicken = Item.new(name: "Fried Chicken", price: 8, restaurant: pizza_masters)
french_fries = Item.new(name: "French Fries", price: 4, restaurant: pizza_masters)


soda = Item.new(name: "Coke", price: 2, restaurant: pizza_masters)
coffee = Item.new(name: "Coffee", price: 3, restaurant: pizza_masters)

bob_order = Order.new(customer: bob, waiter: ralph, items: [pizza, soda], bill: bill1)
jane_order = Order.new(customer: jane, waiter: stephanie, items: [nachos, coffee], bill: bill2)
bob_order2 = Order.new(customer: bob, waiter: ralph, items: [mozzarella_sticks, salad], bill: bill1)


Pry.start
