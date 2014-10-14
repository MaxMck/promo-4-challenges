require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters
  array = []
  for i in (0..grid_size - 1)
    array[i] = ('A'..'Z').to_a.shuffle[0]
  end
  array
end


def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  api_url = 'http://api.wordreference.com/0.8/80143/json/enfr/' + "#{attempt}"
  hash = {}
  result = {}

  open (api_url) do |stream|
    hash = JSON.parse(stream.read)
  end
  if hash["Error"] != nil
    result[:translation] = nil
    result[:score] = 0
    result[:message] = "not an english word"

  elsif hash['term0']['PrincipalTranslations']['0']['FirstTranslation']['term'] == "train"
    result[:translation] = hash['term0']['PrincipalTranslations']['0']['FirstTranslation']['term']
    result[:time] = end_time.to_i - start_time.to_i
    result[:score] = 0
    result[:message] = "not in the grid"

  else
    result[:translation] = hash['term0']['PrincipalTranslations']['0']['FirstTranslation']['term']
    result[:time] = end_time.to_i - start_time.to_i
    result[:score] = result[:translation].length * 10 - result[:time] * 10
    result[:message] = "well done"
  end

  return result
end

run_game("hello", ["E", "H", "L", "L", "O"],"","")


