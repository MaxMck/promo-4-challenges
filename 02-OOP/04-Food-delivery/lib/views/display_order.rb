class DisplayOrder

  def list(array_orders)
    puts
    puts "THE *magic* list:"
    puts
    array_orders.each_with_index do |order, index|
      puts "-#{index + 1} Client: #{order.costumer_name} / Delivery Boy: #{order.delivery_boy} / Status: #{order.status}"
      puts
    end
  end

  def which_customer(array_customers)
    puts "Which customer? (please print the number)"
    puts "Options:"
    array_customers.each do |customer|
      puts "- #{customer.name}"
    end
    print "> "
    return gets.chomp
  end

  def which_delivery(array_delivery)
    puts "Which Delivery Boy? (please print the number)"
    puts "Options:"
    array_delivery.each do |delivery|
      puts "- #{delivery.name}"
    end
    print "> "
    return gets.chomp
  end

  def meal_choice(array_meals)
    puts ""
    puts "-------------------------------"
    puts "Which meal do you want to add ?"
    puts "Here is the list of meal available:"
    array_meals.each do |meal|
      puts "- #{meal.name}"
    end
    puts ""
    print "> "
    return gets.chomp
  end

  def quantity
    puts
    puts "How many of this shit do you want mother fucka'?"
    print "> "
    return gets.chomp
  end

  def done
    puts
    puts "-------------------------------"
    puts "Which one have you finished Superman? "
    return gets.chomp
  end

  def del
    puts
    puts "-------------------------------"
    puts "Which one do you want to delete? "
    return gets.chomp
  end

end