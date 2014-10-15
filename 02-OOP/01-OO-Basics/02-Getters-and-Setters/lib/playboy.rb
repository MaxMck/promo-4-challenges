class Playboy
  attr_reader :name, :nationality, :married, :conquests
  attr_accessor :hair_length


  def initialize(name, nationality, hair_length = 20)
    @nationality = nationality
    @name = name
    @conquests = []
    @hair_length = hair_length
    @married = false
  end

  def meets(lady)
    @conquests << lady unless @married
  end
end