#row_index 
#|
#V

#element_index
#-->

def join_ingredients(src)
  #This Happens Once
  outer_result = []
  row_index = 0
  while row_index < src.count do  #<-- Conditional 
    #ROW BEGIN
    element_index = 0 
    inner_result = []
    while element_index < src[row_index].count do #<-- Conditional
      #Cell BEGIN
       x = src[row_index][element_index]
      inner_result << x
      element_index += 1
      #Cell end
      end
      #ALL CELLS PROCESSED
      food_1 = inner_result[0]
      food_2 = inner_result[1]
      pizza_string = "I love " + food_1 + " and " + food_2 + " on my pizza"
      outer_result << pizza_string
      row_index += 1 
      #ROW END
  end 
  #END ENTIRE SHEBANGABANG
  outer_result
end
# Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair


def find_greater_pair(src)
   outer_result = []
   row_index = 0
  while row_index < src.count do 
    element_index = 0 
    inner_result = []
  while element_index < src[row_index].count do 
    x = src[row_index][element_index]
    inner_result << x 
   element_index += 1
 end
   number_1 = inner_result[0]
   number_2 = inner_result[1]
 if number_1 > number_2 
  outer_result << number_1
 elsif number_1 < number_2
   outer_result << number_2
  row_index += 1
 end
  outer_result
 end
 
 # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays

def total_even_pairs(src)
  total = 0 
  row_index = 0 
 while row_index < src.count do 
   element_index = 0 
   temp_array = []
  while element_index < src[row_index].count do 
    x = src[row_index][element_index]
    temp_array << x
    element_index += 1
  end
   number_1 = temp_array[0]
   number_2 = temp_array[1]
  if number_1 % 2 == 0 && number_2 % 2 == 0
  total += number_1 + number_2
    row_index += 1
   end 
   total 
 end
    
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
