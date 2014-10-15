class OrangeTree
  attr_accessor :age, :height, :fruits

  def initialize
    @height = 0
    @age = 0
  end

  def one_year_passes!
    @age += 1
    @height += 1 if @age <= 10
    if @age <= 5
      @fruits = 0
    elsif @age <= 10
      @fruits = 100
    elsif @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def dead?
    if @age < 50
      return false
    elsif @age - 50 < (1..50).to_a.sample
      return false
    else
      return true
    end
  end

  def pick_a_fruit!
    @fruits -= 1
  end
end
