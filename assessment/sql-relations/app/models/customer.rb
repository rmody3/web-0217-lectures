class Customer
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    birth_year: "INTEGER",
    hometown: "TEXT"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def reviews
    sql = <<-SQL
      SELECT reviews.* FROM reviews
      INNER JOIN customers ON reviews.customer_id = customer.id
      WHERE customers.id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end

  def restaurants
    sql = <<-SQL
      SELECT restaurants.* FROM restaurants
      INNER JOIN reviews ON reviews.restaurant_id = restaurants.id
      WHERE customers.id  = ?
    SQL
    self.class.db.execute(sql, self.id)
  end
end


# customer = Customer.all.first
# id = 1
# customer.restaurants
