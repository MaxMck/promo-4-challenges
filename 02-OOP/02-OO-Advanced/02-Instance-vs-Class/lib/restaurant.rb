class Restaurant
  # TODO: add relevant accessors if necessary
  attr_accessor :name, :average_rating, :city, :note, :number_note

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @name = name
    @average_rating = 0
    @city = city
    @note = 0
    @number_note = 0
    @array_of_restau = []
  end

  # TODO: implement #filter_by_city and #rate methods
  def rate(note)
    new_average = (@average_rating * @number_note + note) / (@number_note + 1)
    @number_note += 1
    @average_rating = new_average
  end

  def self.filter_by_city(array_of_restau, city)
    result = []
    array_of_restau.each do |restaurant|
      result << restaurant if restaurant.city == city
    end
    return result
  end
end
