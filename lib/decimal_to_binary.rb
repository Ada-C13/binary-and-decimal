def decimal_to_binary(decimal)
  binary_array = []
  while decimal > 0
    binary_array << decimal % 2
    decimal = decimal / 2
  end
  return binary_array.reverse
end