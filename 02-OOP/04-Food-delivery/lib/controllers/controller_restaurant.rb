require_relative "../views/display_restaurant"

class ControllerRestaurant

  def initialize(restaurant)
    @restaurant = restaurant
    @display_restaurant = DisplayRestaurant.new
  end

  def display_restaurant
    @display_restaurant.welcome(@restaurant.name.upcase)
  end
end