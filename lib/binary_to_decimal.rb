# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  decimal = 0
  i = 7

  binary_array.each do |element|
    decimal += (2**i) * element
    i -= 1
  end 
  return decimal
  raise NotImplementedError
end 

def decimal_to_binary(decimal_input)

  last_digit = ""

  binary = []
  until last_digit == 0 
    digit_to_store = decimal_input % 2 
    decimal_input /= 2 
    binary << digit_to_store
    last_digit = decimal_input
  end 

  output = ""
  result = ""

  binary.each do |element|
    output = element.to_s
    result += output 
  end 

  return  result.reverse.to_i
end 

p decimal_to_binary(9)






