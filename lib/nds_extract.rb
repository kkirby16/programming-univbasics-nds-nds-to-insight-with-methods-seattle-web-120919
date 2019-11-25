require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def gross_for_director(nds)
  gross_total = 0
  column_index = 0
while column_index < nds[:movies].length do 
 #binding.pry
gross_total += nds[:movies][column_index][:worldwide_gross]
column_index += 1
end
return gross_total
end 

def directors_totals(nds)
  totals = {}
  row_index = 0 
  while row_index < nds.size do 
    directors_data = nds[row_index]
  totals[directors_data[:name]] = gross_for_director(directors_data)
   row_index += 1 
 end
totals 
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

