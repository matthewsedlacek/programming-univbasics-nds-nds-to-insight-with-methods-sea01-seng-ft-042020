$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  gross_total = 0
  director_index = 0

  while director_index < director_data[:movies].length do
    gross_total += director_data[:movies][director_index][:worldwide_gross]  
    director_index += 1 
end 
    gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

result  = {}  
row_i = 0 

  while row_i < nds.length do
      name_index = 0 
      while name_index < nds[row_i][:name].length do 
        director = nds[row_i][:name]
        row_i +=1
      end
      result[director] = gross_for_director(nds)
      name_index += 1
    end
    return result 
end
