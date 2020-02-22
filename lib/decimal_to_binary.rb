def decimal_to_binary(decimal)
  if decimal == nil
    raise ArgumentError.new, "Invalid argument"
  end

  if decimal == 0
    return 0
  end

  binary_array = []
  until decimal <= 0
    remainder = decimal % 2
    decimal = decimal / 2
    binary_array << remainder
  end

  first = 0
  last = binary_array.length - 1

  while first < last
    temp = binary_array[first]
    binary_array[first] = binary_array[last]
    binary_array[last] = temp

    first += 1
    last -= 1
  end

  return binary_array
end

