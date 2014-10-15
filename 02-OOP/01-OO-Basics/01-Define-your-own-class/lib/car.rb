class Car
  attr_reader :model
  attr_writer :brand
  attr_accessor :kilometers

  def initialize(model, brand, kilometers)
  end

  def change_model(newmodel)
    @model = newmodel
  end
end

max = Car.new("S", "tesla", 1000)
p max