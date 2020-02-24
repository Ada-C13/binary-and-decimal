# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# to convert binary to decimal 
# multiply each digit by its power of 2 and add the totals
def binary_to_decimal(binary_array)
  power = 7
  result = 0
  binary_array.each do |digit|
    if digit == 1
      result += 2**power
    end
    power -= 1
  end
  return result
end