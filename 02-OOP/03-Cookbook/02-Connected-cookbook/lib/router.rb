require_relative 'controller'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "      My Cookbook "
    puts "           --           "
    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.webimport
    when 2 then @controller.list
    when 3 then @controller.see
    when 4 then @controller.create
    when 5 then @controller.destroy
    when 6 then @controller.mark
    when 7 then stop
    else puts "Please press 1, 2, 3, 4, 5, 6 or 7"
    end
  end

  def display_tasks
    puts ""
    puts "What do you want to do?"
    puts "1. Import recipes from marmiton "
    puts "2. List all recipes "
    puts "3. See a recipe details"
    puts "4. Add a recipe "
    puts "5. Delete a recipe "
    puts "6. Mark a recipe "
    puts "7. Exit"
  end
end