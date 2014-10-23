class DisplayCustomer

  def list(array_costumers)
    puts "-------------------------------"
    puts "Here is the fucking list:"
    puts ""
    array_costumers.each_with_index do |customer, index|
      puts "#{index + 1}- #{customer.name}"
      puts "#{customer.address}"
      puts ""
    end
  end

  def add_name
    puts "What's the name of the new customer?"
    return gets.chomp
  end

  def add_address
    puts "What's his address ? "
    return gets.chomp
  end

  def good_add(customer)
    puts "-------------------------------"
    puts "#{customer.name} is a brand new customer, bitch"
  end

end