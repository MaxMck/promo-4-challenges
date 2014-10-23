class RepositoryMeal

  attr_reader :meals

 def initialize
   @meals = []
   @meals_hash = {}
   meal_1 = Meal.new("Cheese Burger", 5)
   meal_2 = Meal.new("Burger", 4)
   meal_3 = Meal.new("French Fries", 2)
   @meals << meal_1
   @meals << meal_2
   @meals << meal_3
   @meals_hash[meal_1.name] = 0
   @meals_hash[meal_2.name] = 0
   @meals_hash[meal_3.name] = 0
 end
end