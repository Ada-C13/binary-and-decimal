# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

require 'pry'

def binary_to_decimal(binary_array)

  binary_array
    .reverse
    .each_with_index
    .map {|bit,i| bit * (2 ** i)}
    .inject(:+)

end

def decimal_to_binary(decimal)
  binary_convert = [128, 64, 32, 16, 8, 4, 2, 1]
  binary_array = Array.new(8) { 0 }

  mod_decimal = decimal
  count = 0

  until mod_decimal == 0
    # binding.pry
    if mod_decimal/binary_convert[count] == 1
      binary_array[count] = 1
    else
      binary_array[count] = 0
    end

    mod_decimal %= binary_convert[count]
    count += 1
  end
  
  return binary_array
end

p decimal_to_binary(153)


