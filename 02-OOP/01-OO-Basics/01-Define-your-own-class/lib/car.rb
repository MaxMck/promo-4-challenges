class Car
  attr_reader :model, :brand
  attr_writer :kilometers

  def initialize(model, brand, kilometers)
    @brand = brand
    @model = model
    @kilometers = kilometers
  end
end
