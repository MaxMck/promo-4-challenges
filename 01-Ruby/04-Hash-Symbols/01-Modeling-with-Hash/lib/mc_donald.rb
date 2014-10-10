def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  sum = 0
  cal = {"Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170}
  return sum = cal[burger] + cal[side] + cal[beverage]
end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  sum = 0
  a = poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
  b = poor_calories_counter("Cheese Burger", "French fries", "Coca")
  c = poor_calories_counter("Big Mac", "French fries", "Coca")
  cal2 = {"Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170,
  "Best Of Royal Cheese" => a,
  "Happy Meal" => b,
  "Best Of Big Mac" => c }
  orders.each { |menu| sum += cal2[menu]}
  return sum
end
