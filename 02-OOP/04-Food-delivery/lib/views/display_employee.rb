class DisplayEmployee

  def login_username
    puts "Please enter your username:"
    print ">"
    return gets.chomp
  end

  def login_password
    puts "Please enter your password:"
    print">"
    return gets.chomp
  end

  def wrong_password
    puts "Wrong password"
  end

  def good_password(username, status)
    puts "-------------------------------"
    puts "Welcome #{username}. Your access level is : #{status}"
  end

  def list(array_employees)
    puts "-------------------------------"
    puts "Here is the fucking list:"
    array_employees.each_with_index do |employee, index|
      puts "#{index + 1}- #{employee.name} (#{employee.status})"
    end
  end
end