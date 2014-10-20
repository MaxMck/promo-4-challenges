class Recipe
  attr_reader :name, :description, :time, :rating
  attr_accessor :cross, :rate
  def initialize(name, description, time, cross = false, rating = 0)
    @name = name
    @description = description
    @time = time
    @cross = cross
    @rating = rating
  end

  def marked
    @cross = true
  end
end