class Waiter

  @@all = []
  def initialize(name, restaurant)
    @name = name
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end


end
