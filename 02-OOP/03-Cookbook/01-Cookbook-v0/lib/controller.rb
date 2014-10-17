require_relative "display"
require_relative 'cookbook'
require_relative 'controller'
require_relative 'router'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    @display.print_list(@cookbook.recipes)
  end

  def create
    recipe = Recipe.new(@display.ask_name, @display.ask_description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    index = @display.ask_index
    @cookbook.remove_recipe(index)
  end
end
