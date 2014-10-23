require_relative 'lib/controllers/controller_restaurant'
require_relative 'lib/controllers/controller_employee'
require_relative 'lib/controllers/controller_customer'
require_relative 'lib/controllers/controller_meal'
require_relative 'lib/controllers/controller_order'
class Router
  # def initialize(controller_customer, controller_employee, controller_order, controller_restaurant)
  #   @controller_customer = controller_customer
  #   @controller_employee = controller_employee
  #   @controller_order = controller_order
  #   @controller_restaurant = controller_restaurant
  # end

  def initialize(controller_employee, controller_restaurant, controller_customer, controller_meal, controller_order)
    @controller_employee = controller_employee
    @controller_restaurant = controller_restaurant
    @controller_customer = controller_customer
    @controller_meal = controller_meal
    @controller_order = controller_order
    @running = true
  end

  def run
    @controller_restaurant.display_restaurant
    status = @controller_employee.login
    if status == "manager"
      while @running
        display_tasks_manager
        action = gets.chomp.to_i
        print 'clear'
        route_action_manager(action)
      end
    else
      while @running
        display_tasks_delivery
        action = gets.chomp.to_i
        print 'clear'
        route_action(action)
      end
    end
  end

def stop
  @running = false
end

private

def route_action_manager(action)
  case action
    when 1 then @controller_customer.list_customers
    when 2 then @controller_customer.add_customer
    when 3 then @controller_order.list
    when 4 then @controller_order.add
    when 5 then @controller_order.del
    when 6 then @controller_employee.list_employees
    when 7 then stop
    else puts "Please press 1, 2, 3, 4, 5, 6 or 7"
  end
end

  def display_tasks_manager
    puts "-------------------------------"
    puts "What would you like to do?"
    puts "Options:"
    puts "1. List customers"
    puts "2. Add customer"
    puts "3. View orders"
    puts "4. Add order"
    puts "5. Remove order"
    puts "6. List employees"
    puts "7. Log out"
  end

  def route_action_delivery(action)
    case action
      when 1 then @controller_order.list
      when 2 then
      when 3 then stop
      else puts "Please press 1, 2 or 3"
    end
  end

def display_tasks_delivery
    puts "-------------------------------"
    puts "What would you like to do?"
    puts "Options:"
    puts "1. View orders"
    puts "2. Complete order"
    puts "3. Log out"
  end

end
