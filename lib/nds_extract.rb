$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }




def gross_for_director(director_data)
  total_gross = 0
  index = 0
  while index < director_data.count do
    total_gross += director_data[index][:worldwide_gross]
    index += 1
  end
  total_gross
end


def directors_totals(nds)
  result = {}
  index = 0
  while index < directors_database.count do
    director = directors_database[index][:movies]
    result[directors_database[index][:name]] = gross_for_director(director)
    index += 1
  end
  result
end



