# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# def binary_to_decimal(binary_array)
#   sum = 0
#   index = 0
#   while index < binary_array.length
#     if binary_array[index] == 1
#       decimal = 2**(binary_array.length - (index+1)) 
#     else 
#       decimal = 0
#     end
#       sum += decimal
#       index +=1 
#   end
#   return sum
# end
  

# array = [1, 0, 0, 1, 1, 0, 0, 1]
# puts binary_to_decimal(array)

###########Using each_with_index

# def binary_to_decimal(binary_array)
#   sum  = 0 
#   binary_array.each_with_index do |element, index|
#     if element == 1
#       decimal_element = 2**(binary_array.length - (index+1))
#     else 
#       decimal_element = 0 #return 0 if the element = 0
#     end
#     sum += decimal_element
#   end
#   return sum
# end

#############Using .each 
# def binary_to_decimal(binary_array)
#   sum = 0
#   index = 0
#   binary_array.each do |element|  
#     if element == 1
#       decimal_element = 2**(binary_array.length - (index+1))
#     else
#       decimal_element = 0
#     end 
#     sum += decimal_element
#     index +=1 
#   end
#   return sum    
#   end

 








  

