$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result = {}
  pp directors_database[0][:name]
  pp directors_database[0][:movies]
  pp directors_database[0][:movies][0]
  pp directors_database[0][:movies][0][:worldwide_gross]
  row_index = 0
  while row_index < directors_database.length do
    col_index = 0
    total_gross = 0
    while col_index < directors_database[row_index][:movies].length do
      total_gross += directors_database[row_index][:movies][col_index][:worldwide_gross]
      col_index += 1
    end
    result[directors_database[row_index][:name]]=total_gross
    row_index += 1
  end

  return result
end
