# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# Solution 1 (using while loop)
def binary_to_decimal(binary_array) # i.e. [1, 0, 0, 1, 1, 0, 0, 1]
  i = 0
  decimal = 0

  while i < binary_array.length 
    decimal += 2 ** (binary_array.length - 1 - i) * binary_array[i]
    i += 1
  end 

  return decimal # 153
end


# # Solution 2 (using each_with_index method)
# def binary_to_decimal(binary_array) # i.e. [1, 0, 0, 1, 1, 0, 0, 1]
#   i = 0
#   decimal = 0
  
#   binary_array.each_with_index do |binary, i|
#     decimal += 2 ** (binary_array.length - 1 - i) * binary
#   end 

#   return decimal # 153
# end