require_relative "../models/meal/"
require_relative "../views/display_meal"
require_relative "../repositories/repository_meal"

class ControllerMeal

  def initialize(repository_meal)
    @repository_meal = repository_meal
    @display_meal = DisplayMeal.new
  end

end