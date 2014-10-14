# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  # TODO: return the number most successfull movies max_year
  csv_options = { col_sep: ',' }
  filepath    = file_name

  movie_array = []
  CSV.foreach(filepath, csv_options) do |row|
    movie_hash = { :name => row[0], :year => row[1].to_i, :earnings => row[2].to_i }
    movie_array << movie_hash if movie_hash[:year].to_i < max_year
  end
  movie_array.sort_by { :earnings }
  array_final = []
  for i in [0..number - 1]
    array_final[i] = movie_array[i]
  end
  p array_final
end

