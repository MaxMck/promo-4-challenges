class Order

attr_reader :meals, :delivery_boy, :costumer_name, :status
  def initialize(meals, delivery_boy, costumer_name, status = "pending")
    @meals = meals
    @delivery_boy = delivery_boy
    @costumer_name = costumer_name
    @status = status
  end

end