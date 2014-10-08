require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp
nom = "M"
array = []
i = 0
until nom == ""
  puts "Type a student name:"
  nom = gets.chomp
  array[i] = nom
  i += 1
end




# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list

array_r = wagon_sort(array)
print "Congratulations! Your Wagon has #{i - 1} students:"
print "- "

if i == 2
  print "#{array_r[1]}"

elsif i == 3
  print "#{array_r[1]} and #{array_r[2]}"

elsif i == 4
  print "#{array_r[1]}, #{array_r[2]} and #{array_r[3]}"

else
  for num in (1...i - 3)
    print "#{array_r[num]}, "
  end
  print "#{array_r[i - 2]} and #{array_r[i - 1]}"
end





