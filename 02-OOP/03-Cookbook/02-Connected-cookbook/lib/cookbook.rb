require "csv"
require 'open-uri'
require 'nokogiri'
require_relative "recipe"


class Cookbook
  attr_reader :recipes, :csv_file
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1], row[2], row[3], row[4])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(csv_file, 'w') do |csv|
      @recipes.each do |recip|
        csv << [recip.name, recip.description, recip.time, recip.cross, recip.rating]
      end
    end
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    CSV.open(csv_file, 'w') do |csv|
      @recipes.each do |recip|
        csv << [recip.name, recip.description, recip.time, recip.cross, recip.rating]
      end
    end
  end

  def import_recipes(ingredient)
    doc = Nokogiri::HTML(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}"), nil, "UTF-8")
    doc.search('.m_contenu_resultat').each do |element|
      recipe = Recipe.new(element.search('.m_titre_resultat > a').inner_text,
        element.search('.m_texte_resultat').inner_text[0..149],
        element.search('.m_detail_time > div:first-child').inner_text,
        false,
        element.search('.m_recette_note1').size)
      add_recipe(recipe)
    end
  end

  def mark_it (recipe_id)
    @recipes.each_with_index do |recipe, index|
      if (index + 1) == recipe_id
        recipe.marked
      end
    end
  end

end