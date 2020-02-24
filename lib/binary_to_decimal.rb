# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  length = binary_array.length - 1
  expected_decimal = 0
  binary_array.each do |number|
    expected_decimal += (number*(2**length))
    length -= 1
  end
  return expected_decimal
end

#With Ruby functions
# def binary_to_decimal(binary_array)
#   binary_string = binary_array.join
#   expected_decimal = binary_string.to_i(2)
#   return expected_decimal
# end
