require_relative "../models/customer/"
require_relative "../views/display_customer"
require_relative "../repositories/repository_restaurant"

class ControllerCustomer

  def initialize(repository_restaurant)
    @repository_restaurant = repository_restaurant
    @display_customer = DisplayCustomer.new
  end

  def list_customers
    array_customers = @repository_restaurant.customers
    @display_customer.list(array_customers)
  end

  def add_customer
    new_name = @display_customer.add_name
    new_address = @display_customer.add_address
    new_customer = Customer.new(new_name, new_address)
    @repository_restaurant.add(new_customer)
    @display_customer.good_add(new_customer)
  end
end