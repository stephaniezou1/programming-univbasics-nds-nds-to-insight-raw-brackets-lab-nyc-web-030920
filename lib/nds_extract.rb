$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  result = {}
  director_counter = 0 
  while director_counter < nds.length do
    director = nds[director_counter][:name]
    movie_counter = 0 
    result[director] = 0 
    while movie_counter < nds[director_counter][:movies].length do
      result[director] += nds[director_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1 
    end
    director_counter += 1 
  end
  return result
end
