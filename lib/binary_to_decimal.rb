# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  x = binary_array.length - 1
  y = 0
  decimal = 0
  until y == binary_array.length 
    decimal += binary_array[x] * 2**y
    x -= 1
    y += 1
  end
  return decimal
end
