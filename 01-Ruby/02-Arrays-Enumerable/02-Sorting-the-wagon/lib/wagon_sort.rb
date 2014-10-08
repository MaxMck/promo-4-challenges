def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  students.sort do |x, y|
    x.downcase <=> y.downcase
  end
end
