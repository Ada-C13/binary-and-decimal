# Optional
# Add a decimal_to_binary method which converts a decimal number received as a parameter into an array of binary digits. Then write 3 tests for the method.

def decimal_to_binary(decimal) # i.e. 60
  binary_array = []

  while decimal != 0 
    remainder = decimal % 2
    decimal /= 2 

    binary_array.unshift(remainder)
  end 

  return binary_array # i.e. [1, 1, 1, 1, 0, 0]
end 



# i.e. 
# input       => output  [index]
# 13 
# 13 / 2 = 6  => 1        [3]
# 6 / 2 = 3   => 0        [2]
# 3 / 2 = 1   => 1        [1]
# 1 / 2 = 0   => 1        [0]