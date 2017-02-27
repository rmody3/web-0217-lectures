require 'pry'

require_relative '../customer.rb'
require_relative '../restaurant.rb'
require_relative '../review.rb'

def reload!
  load_relative '../customer.rb'
  load_relative '../restaurant.rb'
  load_relative '../review.rb'
end

Pry.start
