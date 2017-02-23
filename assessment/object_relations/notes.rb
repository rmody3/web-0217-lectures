# We want to add the following methods to each of the classes
# An all method, where each object is added upon initialization of the object
# A find_by_name method for both the customer and the restaurant


# If you are not sketching out your domain, and thinking about single source of truth,
# you are doing it wrong :(

# Build the following methods on the customer class
  # Customer.all
  # Customer.find_by_name(name)
  # Customer#add_review
  # Customer#add_restaurant

  # Review.all
  # Review#customer
  # Review#restaurant

  # Restaurant.all
  # Restaurant.find_by_name(name)
  # Restaurant#reviews
  # Restaurant#customers
    # should return all of the customers who have written reviews.

# customer has many reviews and many restaurants, though reviews
# reviews belong to a customer and a restaurant
# restaurants has many reviews and many customers, through reviews

# customer: name
# review: description, restaurant_id, customer_id
# restaurant: name
#
