# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# binary_array = Array.new(8) { rand(0..1) }
def binary_to_decimal(binary_array)
  # raise NotImplementedError
  decimal_num = 0
  binary_array.length.times do |index|
    decimal_num += (binary_array[-1 - index] * (2**index))
    index += 1
  end
  return decimal_num
end

def decimal_to_binary(decimal_num)
  binary_array = []
  until decimal_num == 0 do
    binary_array << (decimal_num % 2)
    decimal_num /= 2
  end
  return binary_array
end