# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  n = binary_array.length - 1
  decimal = 0
  index = 0
 
  while n >= 0
    decimal += binary_array[index] * 2**n
    n -= 1 
    index += 1
  end 
  return decimal

end



p binary_to_decimal([0,0,0,0,0,0,1,0])
