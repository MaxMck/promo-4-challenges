class Display
  def print_list(recipes)
    puts "---- Here are all your recipes ---- "
    puts " "
    recipes.each_with_index do |recipe, index|
      if recipe.cross == true
        puts "-#{index + 1} [X] #{recipe.name} (#{recipe.time} )"
      else
        puts "-#{index + 1} [ ] #{recipe.name} (#{recipe.time} )"
      end
      puts
    end
  end

  def ask_name
    puts "Quel est le nom de la recette?"
    print ">"
    return gets.chomp
  end

  def ask_description
    puts "Quel est la description de la recette?"
    print ">"
    return gets.chomp
  end

  def ask_time
    puts "Quel est le temps de préparation?"
    print ">"
    return gets.chomp.to_i
  end

  def ask_index
    puts "Quel est le numero de la recette a supprimer?"
    print ">"
    return gets.chomp.to_i
  end

  def ask_import
    puts "Import recipes for which ingredient ?"
    print ">"
    return gets.chomp
  end

  def ask_mark
    puts "Quel est le numero de la recette a cocher ?"
    print ">"
    return gets.chomp.to_i
  end

  def ask_see
    puts "Quel est le numero de la recette a détailler?"
    print ">"
    return gets.chomp.to_i
  end

  def show_me(recipes, num)
    recipes.each_with_index do |recipe, index|
      if (index + 1) == num
        puts "Recette n°#{index + 1}: #{recipe.name}"
        puts
        puts "Rating: #{recipe.rating}/5"
        puts "Temps de préparation: #{recipe.time}"
        puts
        puts "#{recipe.description}"
      end
    end
  end
end

