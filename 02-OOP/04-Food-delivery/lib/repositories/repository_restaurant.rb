class RepositoryRestaurant

attr_reader :customers

 def initialize
   @customers = []
   customer1 = Customer.new("John", "24 avenue Kleber")
   customer2 = Customer.new("Albert", "4 rue Greneta")
   customer3 = Customer.new("Tom", "7 rue Reaumur")
   @customers << customer1
   @customers << customer2
   @customers << customer3
 end

  def add(customer)
    @customers << customer
  end

end