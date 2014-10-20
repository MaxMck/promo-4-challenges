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
    recipe = Recipe.new(@display.ask_name, @display.ask_description, @display.ask_time)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    index = @display.ask_index
    @cookbook.remove_recipe(index)
  end

  def webimport
    @cookbook.import_recipes(@display.ask_import)
  end

  def mark
    @cookbook.mark_it(@display.ask_mark)
  end

  def see
    num = @display.ask_see
    @display.show_me(@cookbook.recipes, num)
  end
end
