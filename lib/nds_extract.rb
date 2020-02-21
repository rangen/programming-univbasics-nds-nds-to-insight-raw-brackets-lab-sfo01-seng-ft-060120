$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds

  result = Hash.new

  director = 0
  movie_index = 0
  gross = 0
  director_movies = []

  while (director < nds.length)
    director_movies = nds[director]
    while (movie_index < director_movies.length)
      gross += director_movies[movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[nds[director][:name]] = gross
    movie_index = 0
    gross = 0
    director += 1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  return result
end
