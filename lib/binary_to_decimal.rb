# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def generate_binary_num
  binary_num = []
  8.times do
    binary_num << rand(0..1)
  end

  return binary_num
end

def binary_to_decimal(binary_array)
  if binary_array.length == 0
    raise ArgumentError.new, "Array cannot be empty "
  end

  decimal = 0

  power = binary_array.length - 1

  binary_array.length.times do |i|
    if binary_array[i] == 1
      decimal += 2 ** power
      power -= 1
    else
      power -= 1
    end
  end

  return decimal
end


