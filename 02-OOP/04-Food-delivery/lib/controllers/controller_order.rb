require_relative "../models/order/"
require_relative "../views/display_order"
require_relative "../repositories/repository_order"
require_relative "../repositories/repository_restaurant"
require_relative "../repositories/repository_employee"
require_relative "../repositories/repository_meal"

class ControllerOrder

  def initialize(repository_order, repository_restaurant, repository_employee, repository_meal)
    @repository_order = repository_order
    @repository_restaurant = repository_restaurant
    @repository_employee = repository_employee
    @repository_meal = repository_meal
    @display_order = DisplayOrder.new
    @array_customers = @repository_restaurant.customers
    @array_delivery = @repository_employee.delivery_boy
    @array_orders = @repository_order.orders
  end

  def list
    @display_order.list(@array_orders)
  end

  def which_customer
    customer = @display_order.which_customer(@array_customers)
    return customer
  end

  def which_delivery
    delivery = @display_order.which_delivery(@array_delivery)
    return delivery
  end

  def meal_choice
    array_meals = @repository_meal.meals
    meal = @display_order.meal_choice(array_meals)
    return meal
  end

  def meal_quantity
    quantity = @display_order.quantity
    return quantity
  end

  def add
    customer = which_customer
    delivery = which_delivery
    meal = {meal_choice => meal_quantity}
    new_order = Order.new(meal, delivery, customer)
    @repository_order.orders << new_order
    puts "You just added a new order! Wawww hurry up !"
  end

  def del
    list
    num = @display_order.del
    num2 = num.to_i - 1
    @array_orders.delete_at(num2)
    puts "DELETED ! "
  end

  def done
    list
    num = @display_order.del
    @array_orders.delete_at(num - 1)
    puts "Thanks nigga'! Go back to work"
  end

end