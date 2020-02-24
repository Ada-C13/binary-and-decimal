# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_value = 0

  binary_array.length.times do |index|
    power = binary_array.length - 1 - index
    decimal_value += (binary_array[index] * (2 ** power))
  end

  return decimal_value
end

# Method to return binary value in a array of 0's and 1's from a given decimal value
def decimal_to_binary(decimal)
  raise ArgumentError, "This method only accepts positive decimal values" if decimal < 0 || !decimal.is_a?(Integer)
  return [0] if decimal == 0
  
  binary = []
  while decimal > 0 
    remainder = decimal%2
    decimal /= 2
    binary << remainder
  end
  
  return binary.reverse!  #or would need to implement the swap method to reverse in place
end


# alternative solution using Ruby method
# def binary_to_decimal(binary_array)
#   decimal_value = 0

#   binary_array.each_with_index do |digit, index|
#     power = binary_array.length - 1 - index
#     decimal_value += (digit * (2 ** power))
#   end

#   return decimal_value
# end