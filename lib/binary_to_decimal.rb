# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  x = 0 # index of the most significant bit
  y = binary_array.length - 1 # index of the least significant bit
  while x < y
    temp = binary_array[x]
    binary_array[x] = binary_array[y]
    binary_array[y] = temp
    x += 1
    y -= 1
  end
  num = (binary_array[0] * 2**0) +
        (binary_array[1] * 2**1) +
        (binary_array[2] * 2**2) +
        (binary_array[3] * 2**3) +
        (binary_array[4] * 2**4) +
        (binary_array[5] * 2**5) +
        (binary_array[6] * 2**6) +
        (binary_array[7] * 2**7)
  return num
end

def decimal_to_binary(decimal_num)
  binary_array = []
  until decimal_num == 0
    if decimal_num % 2 == 1
      binary_array << 1
    elsif decimal_num % 2 == 0
      binary_array << 0
    end
  decimal_num /= 2
  end
  binary_num = binary_array.reverse.join.to_i 
  return binary_num
end
