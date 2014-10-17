require "csv"
require_relative "recipe"


class Cookbook
  attr_reader :recipes, :csv_file
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(csv_file, 'w') do |csv|
      @recipes.each do |recip|
        csv << [recip.name, recip.description]
      end
    end
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    CSV.open(csv_file, 'w') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end