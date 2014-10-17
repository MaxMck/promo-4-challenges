class Display
  def print_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "-#{index + 1} #{recipe.name} : #{recipe.description}"
    end
  end

  def ask_name
    p "Quel est le nom de la recette?"
    return gets.chomp
  end

  def ask_description
    p "Quel est la description de la recette?"
    return gets.chomp
  end

  def ask_index
    p "Quel est le numero de la recette a supprimer?"
    return gets.chomp
  end
end

