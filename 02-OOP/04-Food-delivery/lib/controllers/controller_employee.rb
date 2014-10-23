require_relative '../models/employee'
require_relative "../views/display_employee"
require_relative "../repositories/repository_employee"

class ControllerEmployee

  def initialize(repository_employee)
    @repository_employee = repository_employee
    @display_employee = DisplayEmployee.new
    @password_hash = Employee.password_hash
    @status_hash = Employee.status_hash
  end

  def login
    username = @display_employee.login_username
    password = @display_employee.login_password
    while password != @password_hash[username]
      @display_employee.wrong_password
      username = @display_employee.login_username
      password = @display_employee.login_password
    end
    @display_employee.good_password(username, @status_hash[username].upcase )
    status = @status_hash[username].downcase
    return "#{status}"
  end

  def list_employees
    array_employees = @repository_employee.employees
    @display_employee.list(array_employees)
  end
end