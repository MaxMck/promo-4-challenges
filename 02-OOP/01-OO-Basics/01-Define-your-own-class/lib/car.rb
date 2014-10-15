class Car
  attr_writer :model, :brand, :kilometers

  def initialize(model, brand, kilometers)
  end

  def change_model(newmodel)
    @model = newmodel
  end
end