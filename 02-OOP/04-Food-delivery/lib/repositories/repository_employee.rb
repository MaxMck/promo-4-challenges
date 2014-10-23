class RepositoryEmployee

attr_reader :employees, :delivery_boy

 def initialize
   @employees = []
   @delivery_boy = []
   employee1 = Employee.new("Max", "mdp1", "manager")
   employee2 = Employee.new("Alex", "mdp2", "delivery boy")
   employee3 = Employee.new("Zlatan", "mdp3", "delivery boy")
   @employees << employee1
   @employees << employee2
   @employees << employee3
   @delivery_boy << employee2
   @delivery_boy << employee3
 end

end