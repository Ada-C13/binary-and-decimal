# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# # the algorithm you devised in class.




def binary_to_decimal(binary_array)
  raise ArgumentErrot if binary_array == nil
  decimal = 0
  index = 0
  while index < binary_array.length
    decimal += binary_array[index] * 2 ** (binary_array.length - 1 - index)
    index += 1
  end
  return decimal
end

dec  = binary_to_decimal([1, 0, 0, 1, 1, 0, 1, 0])
print dec



def binary_to_decimal(binary_array)
  raise ArgumentErrot if binary_array == nil
  decimal  = 0
  binary_array.each_with_index do |digit, index|
    decimal += digit * 2 ** (binary_array.length - 1 - index)
  end
  return decimal
end

dec  = binary_to_decimal([1, 0, 0, 1, 1, 0, 1, 0])
print dec